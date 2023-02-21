#!/usr/bin/env python3

import argparse
import os.path
import pathlib
from collections import namedtuple
from datetime import datetime
from zoneinfo import ZoneInfo
import cmd
import logging
import re
import sqlite3
from jinja2 import Environment, FileSystemLoader
import yaml

template_env = Environment(loader=FileSystemLoader(os.path.join(pathlib.Path(__file__).parent.absolute(), "templates")))

ComboRecord = namedtuple('ComboRecord', 'id, machine, os, compiler, compiler_ver, bopt, mpi, mpi_ver, netcdf')
ResultRecord = namedtuple('ResultRecord',
                          'hash, collect_ts, combination_id, esmf_branch, esmf_hash, phase, clone_ts, build, build_ts, '
                          'unit_pass, unit_fail, system_pass, system_fail, example_pass, example_fail, nuopc_pass, '
                          'nuopc_fail, esmpy_install, esmpy_pass, esmpy_fail')


def _db_is_initialized():
    cur = dbconn.cursor()
    cur.execute(
        """
        SELECT name FROM sqlite_master WHERE type='table' AND name='combination'
        """)
    return cur.fetchone() is not None


def _init_database():
    cur = dbconn.cursor()

    cur.execute("DROP TABLE IF EXISTS combination")
    cur.execute("DROP TABLE IF EXISTS result")

    cur.execute("""
        CREATE TABLE combination (
            id integer PRIMARY KEY,
            machine text NOT NULL,
            os text NOT NULL,
            compiler text NOT NULL,
            compiler_ver text NOT NULL,
            bopt text NOT NULL,
            mpi text NOT NULL,
            mpi_ver text NOT NULL,
            netcdf next NOT NULL,
            UNIQUE (machine, os, compiler, compiler_ver, bopt, mpi, mpi_ver, netcdf)
        );    
        """)

    cur.execute("""
        CREATE TABLE result (
            hash text NOT NULL PRIMARY KEY,
            collect_ts datetime NOT NULL,            
            combination_id integer NOT NULL,
            esmf_branch text NOT NULL,
            esmf_hash text NOT NULL,            
            phase text,
            clone_ts datetime,
            build text,
            build_ts datatime,
            unit_pass integer,
            unit_fail integer,
            system_pass integer,
            system_fail integer,
            example_pass integer,
            example_fail integer,
            nuopc_pass integer,
            nuopc_fail integer,
            esmpy_install text,
            esmpy_pass integer,
            esmpy_fail integer,
            FOREIGN KEY (combination_id) REFERENCES combination (id),
            UNIQUE (collect_ts, combination_id, esmf_hash)
        );
        """)

    dbconn.commit()


def _insert_combo(combo: ComboRecord):
    cur = dbconn.cursor()
    cur.execute(
        """
        SELECT id FROM combination 
        WHERE machine=? AND os=? AND compiler=? AND compiler_ver=? AND bopt=? AND mpi=? AND mpi_ver=? AND netcdf=?
        """,
        combo[1:])
    _row = cur.fetchone()
    if _row is not None:
        # logging.debug(f" FOUND ID = {_row[0]}")
        return _row[0]
    else:
        cur.execute(
            """
            INSERT OR IGNORE INTO combination (machine, os, compiler, compiler_ver, bopt, mpi, mpi_ver, netcdf)
            VALUES (?,?,?,?,?,?,?,?)
            """,
            combo[1:])
        dbconn.commit()
        # logging.debug(f" INSERTED ID = {cur.lastrowid}")
        return cur.lastrowid


def _insert_result(result: ResultRecord):
    cur = dbconn.cursor()
    cur.execute(
        """
        INSERT INTO result (hash, collect_ts, combination_id, esmf_branch, esmf_hash, phase, clone_ts, build, build_ts, 
                            unit_pass, unit_fail, system_pass, system_fail, example_pass, example_fail, nuopc_pass,
                            nuopc_fail, esmpy_install, esmpy_pass, esmpy_fail)
        VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)
        """,
        result)
    dbconn.commit()
    # logging.debug(f" INSERTED ID = {cur.lastrowid}")
    return cur.lastrowid


def _hash_exists(artifacts_hash):
    cur = dbconn.cursor()
    cur.execute(
        """
        SELECT hash FROM result WHERE hash = ?
        """, (artifacts_hash,))
    return cur.fetchone() is not None


def _retrieve_all_combinations():
    cur = dbconn.cursor()
    cur.execute(
        """
        SELECT combination.*,
           machine || '_' || os || '_' || compiler || '_' || compiler_ver || '_' || mpi || '_' || mpi_ver || '_' || netcdf || '_' || bopt AS combo_link,     
           (SELECT STRFTIME('%m-%d %H:%M', MAX(collect_ts)) FROM result WHERE result.combination_id = combination.id) AS last_reported
        FROM combination
        ORDER BY machine, compiler, compiler_ver, mpi, mpi_ver
        """)
    return cur.fetchall()


# regular expression to match long form of git tags
re_git_tag = re.compile(r"([^-]+-)(\d+)(-g.+)")


# pads long form git tags with zeros to facilitate correct sorting
# e.g., v8.4.0b09-6-gb967350 --> v8.4.0b09-0006-gb967350
def _padded_tag(row):
    _m = re_git_tag.fullmatch(row["esmf_hash"])
    if _m is not None:
        _tag = _m.group(1) + f"{int(_m.group(2)):04d}" + _m.group(3)
        return _tag
    else:
        return row["esmf_hash"]


def _retrieve_tested_hashes(branch=None):
    if branch is not None:
        _where = "WHERE esmf_branch = ?"
        _params = (branch,)
    else:
        _where = ""
        _params = ()

    cur = dbconn.cursor()
    cur.execute(
        f"""
        SELECT 
            esmf_branch, esmf_hash, 
            COUNT(DISTINCT combination_id) AS combo_count, 
            replace(group_concat(DISTINCT machine || '/' || compiler), ',', ', ') AS machines
        FROM result INNER JOIN combination ON result.combination_id = combination.id
        {_where}
        GROUP BY esmf_branch, esmf_hash
        ORDER BY esmf_hash DESC
        """, _params)

    _rows = cur.fetchall()
    _rows.sort(key=_padded_tag, reverse=True)
    return _rows


def _retrieve_tested_branches():
    cur = dbconn.cursor()
    cur.execute(
        """
        SELECT DISTINCT esmf_branch FROM result
        ORDER BY esmf_branch
        """)
    return cur.fetchall()


def _retrieve_summary_by_combo(combo_id):
    """

    """
    cur = dbconn.cursor()

    cur.execute(
        """
        SELECT machine, compiler, compiler_ver, mpi, mpi_ver, bopt, netcdf,             
            STRFTIME('%m-%d %H:%M', build_ts) as build_ts,
            STRFTIME('%m-%d %H:%M', clone_ts) as clone_ts,            
            esmf_hash, esmf_branch,
			(SELECT hash FROM result R 
				WHERE R.combination_id = combination.id AND R.clone_ts = result.clone_ts AND R.esmf_hash = result.esmf_hash 
				ORDER BY R.collect_ts DESC LIMIT 1) as hash,
			MAX(build) as build, MAX(unit_pass) as unit_pass, MAX(unit_fail) as unit_fail, MAX(system_pass) as system_pass, MAX(system_fail) as system_fail, 
			MAX(example_pass) as example_pass, MAX(example_fail) as example_fail, MAX(nuopc_pass) as nuopc_pass, MAX(nuopc_fail) as nuopc_fail,
			MAX(esmpy_install) as esmpy_install, MAX(esmpy_pass) as esmpy_pass, MAX(esmpy_fail) as esmpy_fail
        FROM result INNER JOIN combination ON result.combination_id = combination.id
        WHERE combination_id = ?
        GROUP BY machine, compiler, compiler_ver, mpi, mpi_ver, bopt, netcdf, esmf_hash, esmf_branch, build_ts, clone_ts
        ORDER BY esmf_hash DESC
        """, (combo_id,))
    return cur.fetchall()


def _retrieve_summary_by_branch(combo_id, branch):
    """
    Retrieves only the most recent result for each combination/hash. This is needed
    in cases where the same ESMF hash is tested multiple times on a platform, such
    as two nights in a row.
    """
    cur = dbconn.cursor()

    cur.execute(
        """
        SELECT hash, machine, compiler, compiler_ver, mpi, mpi_ver, bopt, netcdf, 
            STRFTIME('%m-%d %H:%M', collect_ts) as collect_ts, 
            STRFTIME('%m-%d %H:%M', build_ts) as build_ts,
            STRFTIME('%m-%d %H:%M', clone_ts) as clone_ts,
            build, unit_pass, unit_fail, system_pass, system_fail, example_pass, example_fail, nuopc_pass, 
            nuopc_fail, esmpy_install, esmpy_pass, esmpy_fail, esmf_hash, esmf_branch, phase
        FROM result INNER JOIN combination ON result.combination_id = combination.id
        WHERE combination_id = ?
            AND esmf_branch = ?
            AND result.collect_ts = (SELECT MAX(collect_ts) 
                    FROM result AS R 
                    WHERE R.esmf_hash = result.esmf_hash 
                        AND R.esmf_branch = result.esmf_branch 
                        AND result.combination_id = R.combination_id)                    
        ORDER BY esmf_hash DESC
        """, (combo_id, branch))

    _rows = cur.fetchall()
    _rows.sort(key=_padded_tag, reverse=True)
    return _rows


def _retrieve_summary_for_esmf_hash(esmf_hash):
    cur = dbconn.cursor()

    cur.execute(
        """
        SELECT combination_id, machine, os, compiler, compiler_ver, mpi, mpi_ver, bopt, netcdf, 
            machine || '_' || os || '_' || compiler || '_' || compiler_ver || '_' || mpi || '_' || mpi_ver || '_' || netcdf || '_' || bopt AS combo_link,
			esmf_hash, esmf_branch,
            STRFTIME('%m-%d %H:%M', build_ts) as build_ts,
            STRFTIME('%m-%d %H:%M', clone_ts) as clone_ts,
			(SELECT hash FROM result R 
				WHERE R.combination_id = combination.id AND R.clone_ts = result.clone_ts AND R.esmf_hash = result.esmf_hash 
				ORDER BY R.collect_ts DESC LIMIT 1) as hash,
			MAX(build) as build, MAX(unit_pass) as unit_pass, MAX(unit_fail) as unit_fail, MAX(system_pass) as system_pass, MAX(system_fail) as system_fail, 
			MAX(example_pass) as example_pass, MAX(example_fail) as example_fail, MAX(nuopc_pass) as nuopc_pass, MAX(nuopc_fail) as nuopc_fail,
			MAX(esmpy_install) as esmpy_install, MAX(esmpy_pass) as esmpy_pass, MAX(esmpy_fail) as esmpy_fail
        FROM result INNER JOIN combination ON result.combination_id = combination.id
        WHERE esmf_hash = ?
        GROUP BY combination_id, machine, os, compiler, compiler_ver, mpi, mpi_ver, bopt, netcdf, combo_link, esmf_hash, esmf_branch, build_ts, clone_ts
        ORDER BY machine, compiler, compiler_ver, mpi, mpi_ver
        """, (esmf_hash,))

    return cur.fetchall()


def _print_summary_for_esmf_hash(esmf_hash):
    _cfmt = "{:<14} {:<20} {:<20} {:<5} {:<12} {:<14} {:<8} {:<10} {:<10} {:<10} {:<10}"
    print(f"\n\nESMF HASH: {esmf_hash}")
    print("=" * 140)
    print(
        _cfmt.format('Machine', 'Compiler', 'MPI', 'BOPT', 'NetCDF', 'Collected', 'Build', 'UTests', 'STests', 'ETests',
                     'NUOPC'))
    print("=" * 140)
    for i, r in enumerate(_retrieve_summary_for_esmf_hash(esmf_hash), start=1):
        print(_cfmt.format(r["machine"],
                           r["compiler"] + "/" + r["compiler_ver"],
                           r["mpi"] + "/" + r["mpi_ver"],
                           r["bopt"],
                           r["netcdf"],
                           r["collect_ts"],
                           r["build"],
                           str(r["unit_pass"]) + "/" + str(r["unit_fail"]),
                           str(r["system_pass"]) + "/" + str(r["system_fail"]),
                           str(r["example_pass"]) + "/" + str(r["example_fail"]),
                           str(r["nuopc_pass"]) + "/" + str(r["nuopc_fail"])))


def _format_branch_summary_html(branch, filename):
    _hashes = _retrieve_tested_hashes(branch=branch)
    _esmf_commit_msgs = {}
    if _esmf_repo is not None:
        for _h in _hashes:
            _esmf_commit_msgs[_h["esmf_hash"]] = _get_esmf_commit_message(_h["esmf_hash"])

    _combos = _retrieve_all_combinations()

    _result_rows = []
    for _c in _combos:
        _results = _retrieve_summary_by_branch(combo_id=_c["id"], branch=branch)
        _rindex = 0
        _row = []
        for _h in _hashes:
            if _rindex < len(_results) and _results[_rindex]["esmf_hash"] == _h["esmf_hash"]:
                _row.append(_results[_rindex])
                _rindex += 1
            else:
                _row.append({})
        _result_rows.append(_row)

    template = template_env.get_template("branch.html")
    with open(filename, "w") as _out:
        _out.write(template.render(branch=branch,
                                   hashes=_hashes,
                                   esmf_commit_msgs=_esmf_commit_msgs,
                                   combos=_combos,
                                   result_rows=_result_rows))
    logging.info(f"Generated file: {os.path.abspath(filename)}")


def _format_combo_summary_html(combo, filename):
    _combo_id = combo["id"]
    _combo_label = f"{combo['machine']}/{combo['OS']}/{combo['compiler']}/{combo['compiler_ver']}/{combo['mpi']}/{combo['mpi_ver']}/{combo['bopt']}/{combo['netcdf']}"
    _result_rows = _retrieve_summary_by_combo(combo_id=_combo_id)
    template = template_env.get_template("combo.html")
    with open(filename, "w") as _out:
        _out.write(template.render(combo_label=_combo_label, result_rows=_result_rows))
    logging.info(f"Generated file: {os.path.abspath(filename)}")


def _format_hash_html(_hash, _branch, filename):
    _result_rows = _retrieve_summary_for_esmf_hash(_hash)
    template = template_env.get_template("hash.html")
    _esmf_commit_msg = _get_esmf_commit_message(_hash)
    with open(filename, "w") as _out:
        _out.write(
            template.render(hash=_hash, branch=_branch, esmf_commit_msg=_esmf_commit_msg, result_rows=_result_rows))
    logging.info(f"Generated file: {os.path.abspath(filename)}")


def _format_hash_md(_hash, _branch, filename):
    _result_rows = _retrieve_summary_for_esmf_hash(_hash)
    template = template_env.get_template("release.md")
    with open(filename, "w") as _out:
        _out.write(template.render(hash=_hash, branch=_branch, result_rows=_result_rows))
    logging.info(f"Generated file: {os.path.abspath(filename)}")


def _format_branch_list_html(filename):
    _branches = _retrieve_tested_branches()
    _combos = _retrieve_all_combinations()
    template = template_env.get_template("top.html")
    with open(filename, "w") as _out:
        _out.write(template.render(branches=_branches, combos=_combos))
    logging.info(f"Generated file: {os.path.abspath(filename)}")


def _print_tested_hashes():
    print("\nHashes of ESMF in the test artifacts database:")
    print("=" * 120)
    print("{:<4} {:<45} {:<8} {}".format('No.', 'Hash (Branch)', 'Combos', 'Machines'))
    print("=" * 120)
    for i, h in enumerate(_retrieve_tested_hashes(), start=1):
        _hb = f"{h[1]} ({h[0]})"
        print("{:<4} {:<45} {:<8} {}".format(i, _hb, h[2], h[3]))


def _get_machine_list(repo):
    logging.debug(f"Getting list of machines: {repo}")
    cmd.chdir(repo)
    cmd.runcmd("git fetch --progress --prune")
    branch_list = cmd.runcmd("git branch -a")
    logging.debug(f"Remote branches:\n{branch_list}")
    regex = re.compile(r"remotes/origin/(\w+)")
    machines = filter(lambda s: s not in ["HEAD", "main"],
                      regex.findall(branch_list))
    return list(machines)


def _get_artifacts_base_url(repo):
    logging.debug(f"Getting base URL of artifacts")
    cmd.chdir(repo)
    _out = cmd.runcmd("git remote -v")
    _url = _extract(r"origin\s+(\S+)", _out)
    if "https" in _url:
        _parts = _extract(r"https://github.com/([^/]+)/(\S+)(\.git)?", _url)
    else:
        _parts = _extract(r"git@github.com:([^/]+)/(\S+)\.git", _url)
    return f"https://github.com/{_parts[0]}/{_parts[1]}"


def _get_esmf_commit_message(_hash):
    if _esmf_repo is not None:
        cmd.chdir(_esmf_repo)
        logging.debug(f"Getting commit message for hash {_hash}")
        return cmd.runcmd_no_err(f"git show --format='%s (%an, %ad)' --no-patch {_hash}")
    return None


def _load_artifact_commits(repo, machine_branch):
    logging.info(f"Loading artifacts from branch: {machine_branch}")
    cmd.chdir(repo)
    cmd.runcmd(f"git checkout --progress --force {machine_branch}", stderr=True)
    cmd.runcmd(f"git fetch --progress origin {machine_branch}")
    cmd.runcmd(f"git reset --hard origin/{machine_branch}")
    # TODO: provide a parameter to limit the number of commits to consider
    # currently this is hard-coded to 9999
    _log_out = cmd.runcmd(f"git log --format='%H %aI %s' -n 9999")
    _log_list = _log_out.splitlines()

    for _log_entry in _log_list:
        # logging.debug(_log_entry)
        _commit_dict = {"hash": _log_entry[0:40],  # hash of artifacts commit
                        "ts": _log_entry[41:66],  # timestamp of artifacts commit
                        "action": _extract(r"action=(\S+)", _log_entry),
                        "dir": _extract(r"dir=(\S+)", _log_entry),
                        "esmf_hash": _extract(r"hash=(\S+)", _log_entry),  # hash of ESMF tested
                        "esmf_branch": _extract(r"branch=(\S+)", _log_entry, "None"),  # branch of ESMF tested
                        "phase": _extract(r"phase=(\S+)", _log_entry, "None")
                        }
        # logging.debug(f"_commit_dict = {_commit_dict}")

        if _hash_exists(_commit_dict["hash"]):
            logging.debug(f"Skipping existing artifacts commit: {_commit_dict['hash']}")
            continue

        skip = False
        for p in _exclude_esmf_hashes:
            if _commit_dict["esmf_hash"] is not None and p.fullmatch(_commit_dict["esmf_hash"]) is not None:
                logging.debug(f"Skipping excluded ESMF hash: {_commit_dict['esmf_hash']}")
                skip = True
                break

        for p in _exclude_esmf_branches:
            if _commit_dict["esmf_branch"] is not None and p.fullmatch(_commit_dict["esmf_branch"]) is not None:
                logging.debug(f"Skipping excluded ESMF branch: {_commit_dict['esmf_branch']}")
                skip = True
                break

        if not skip and _commit_dict["action"] == "collect":
            _collect_summary_stats(_commit_dict, machine_branch)


def _extract(regex, string, default=None):
    _match = re.search(regex, string)
    if _match is not None:
        if len(_match.groups()) == 1:
            return _match.group(1)
        else:
            return _match.groups()
    else:
        return default


def _collect_summary_stats(commit, machine_branch):
    _hash = commit["hash"]
    logging.info(f"Load from artifacts commit: {_hash}")
    cmd.runcmd(f"git checkout --progress {_hash}", stderr=True)
    _file_list = cmd.runcmd(f"git show {_hash} --oneline --name-only")
    _m = re.search(
        r"(?P<branch>\S+)/(?P<compiler>\S+)/(?P<compiler_ver>\S+)/(?P<bopt>\S+)/(?P<mpi>\S+)/(?P<mpi_ver>\S+)/summary\.dat",
        _file_list)
    if _m is not None:
        _summary_file = _m.group(0)
        _summary_text = cmd.runcmd(f"cat {_summary_file}")

        _os = _extract(r"ESMF_OS:\s+(\S+)", _summary_text, "None")
        _netcdf = _extract(r"NetCDF library version: netCDF (.+)\n", _summary_text, "None")
        _combo = ComboRecord._make((None, machine_branch, _os, _m["compiler"], _m["compiler_ver"],
                                    _m["bopt"], _m["mpi"], _m["mpi_ver"], _netcdf))
        _combo_id = _insert_combo(_combo)

        _esmf_hash = _extract(r"ESMF hash: (\S+)", _summary_text)
        _build_ts = _extract(r"Build timestamp:\s+(.+)\n", _summary_text, "None")
        try:
            datetime.strptime(_build_ts, '%Y-%m-%d %H:%M:%S')
        except ValueError:
            logging.debug(f"Setting build_ts to null: {_build_ts}")
            _build_ts = None

        _clone_ts = _extract(r"Clone timestamp:\s+(.+)\n", _summary_text, "None")
        try:
            datetime.strptime(_clone_ts, '%Y-%m-%d %H:%M:%S')
        except ValueError:
            logging.debug(f"Setting clone_ts to null: {_clone_ts}")
            _clone_ts = None

        _build_pass = _extract(r"build:\s+(\S+)", _summary_text)
        _unit = _extract(r"unit tests:\s+PASS\s+(\S+)\s+FAIL\s+(\S+)", _summary_text, (None, None))
        _system = _extract(r"system tests:\s+PASS\s+(\S+)\s+FAIL\s+(\S+)", _summary_text, (None, None))
        _example = _extract(r"example tests:\s+PASS\s+(\S+)\s+FAIL\s+(\S+)", _summary_text, (None, None))
        _nuopc = _extract(r"nuopc tests:\s+PASS\s+(\S+)\s+FAIL\s+(\S+)", _summary_text, (None, None))
        _esmpy_install = _extract(r"esmpy install:\s+(\S+)", _summary_text)
        _esmpy = _extract(r"esmpy tests:\s+PASS\s+(\S+)\s+FAIL\s+(\S+)", _summary_text, (None, None))

        _result = ResultRecord._make((_hash, commit["ts"], _combo_id, commit["esmf_branch"],
                                      _esmf_hash, commit["phase"], _clone_ts, _build_pass, _build_ts, _unit[0],
                                      _unit[1], _system[0], _system[1], _example[0], _example[1], _nuopc[0], _nuopc[1],
                                      _esmpy_install, _esmpy[0], _esmpy[1]))
        # logging.debug(f"RESULT: {_result}")
        _insert_result(_result)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='A tool to summarize ESMF test artifacts')
    parser.add_argument('-a', '--artifacts-repo', help='Location of artifacts', required=True)
    parser.add_argument('-d', '--database-root', help="""
            Directory to store internal results database. If the DB exists in this directory it
            will be updated with the most recent results. Otherwise, a new one will be created.  
            """, required=True)
    parser.add_argument('-e', '--esmf-repo', help="""
            Path to clone of the ESMF repository. If provided, summary tables will be annotated 
            with commit messages, authors, and dates from each hash.
            """, required=False)
    parser.add_argument('-c', '--config', help="""
            Path to optional configuration YAML file to customize summarizer output.  
            """, required=False)
    parser.add_argument('-l', '--list', help="""
            Only list the tested tags/hashes and exit.  
            """, required=False, action='store_true')
    # parser.add_argument('-t', '--tag', help="""
    #        Generate test summary for the given tag (or hash) of ESMF.
    #        Without this, results will include all tested tags/hashes.
    #        """, required=False)
    # parser.add_argument('-o', '--output-format', metavar="FORMAT", help="""
    #    'stdout' prints to the screen (default option).
    #    'html' outputs a web site
    #    """, default="stdout", required=False)
    parser.add_argument('--output-dir', metavar="DIR", help="""
            Path to output directory.      
            """, default="./", required=False)
    parser.add_argument('--no-update', help="""
            By default, the latest test artifacts are pulled in. This option skips that step
            and only queries the test results already stored in the internal database.
            """, required=False, action="store_true")
    parser.add_argument('--refresh', help="""
            Delete the internal database and re-process the full artifacts history.  If not
            provided, the default behavior is to only process commits to the artifacts repository
            that do not already exist in the database.
            """, required=False, action="store_true")
    parser.add_argument('--debug', help="""
            Turn on verbose debugging output.
            """, required=False, action="store_true")

    args = vars(parser.parse_args())

    if args["debug"]:
        _log_level = logging.DEBUG
    else:
        _log_level = logging.INFO
    logging.basicConfig(format='%(levelname)s: %(message)s', level=_log_level)

    _repo_path = args["artifacts_repo"]
    _db_path = args["database_root"]

    if not os.path.isdir(_repo_path):
        logging.error(f"No artifacts repository found at: {_repo_path}")
        exit(1)

    if not os.path.isdir(_db_path):
        logging.error(f"Database directory must already exist: {_db_path}")
        exit(1)

    _exclude_esmf_hashes = []
    _exclude_esmf_branches = []
    _exclude_machines = []

    # optionally read in configuration from YAML
    if args["config"] is not None:
        _config_file = os.path.abspath(args["config"])
        if not os.path.isfile(_config_file):
            logging.error(f"Configuration file not found: {_config_file}")
        else:
            logging.info(f"Using configuration file: {_config_file}")
            with open(_config_file) as file:
                _yaml = yaml.load(file, Loader=yaml.SafeLoader)
                if "exclude" in _yaml:
                    if _yaml["exclude"].get("esmf_hash") is not None:
                        # convert to regex
                        _exclude_esmf_hashes = list(map(
                            lambda h: re.compile(h.replace(".", r"\.").replace("*", ".*")),
                            _yaml["exclude"]["esmf_hash"]))
                        logging.debug(f"Exclude ESMF hashes: {_exclude_esmf_hashes}")
                    if _yaml["exclude"].get("esmf_branch") is not None:
                        _exclude_esmf_branches = list(map(
                            lambda h: re.compile(h.replace(".", r"\.").replace("*", ".*")),
                            _yaml["exclude"]["esmf_branch"]))
                        logging.debug(f"Exclude ESMF branches: {_exclude_esmf_branches}")
                    if _yaml["exclude"].get("machine") is not None:
                        _exclude_machines = list(map(
                            lambda h: re.compile(h.replace(".", r"\.").replace("*", ".*")),
                            _yaml["exclude"]["machine"]))
                        logging.debug(f"Exclude machines: {_exclude_machines}")

    dbconn = sqlite3.connect(f"{os.path.join(_db_path, 'esmf_test_summary.sqlite3')}")
    # dbconn = sqlite3.connect(":memory:")
    dbconn.row_factory = sqlite3.Row

    # import cProfile
    # pr = cProfile.Profile()
    # pr.enable()
    if args["refresh"] or not _db_is_initialized():
        logging.debug("Initializing database")
        _init_database()

    if not args["no_update"]:
        _mach_list = _get_machine_list(_repo_path)
        for _m in _mach_list:
            skip = False
            for p in _exclude_machines:
                if p.fullmatch(_m) is not None:
                    logging.debug(f"Skipping excluded machine: {_m}")
                    skip = True
                    break
            if not skip:
                _load_artifact_commits(_repo_path, _m)
    # pr.disable()
    # pr.print_stats(sort="cumulative")

    if args["list"]:
        _print_tested_hashes()
        exit(0)

    if not os.path.isdir(args["output_dir"]):
        cmd.runcmd(f"mkdir -p {args['output_dir']}")
    else:
        cmd.runcmd(f"rm -rf {args['output_dir']}/*")
    cmd.runcmd(f"mkdir -p {args['output_dir']}/combos")

    # if args["output_format"] == "stdout":
    #    if args["tag"] is not None:
    #        _print_summary_for_esmf_hash(args["tag"])
    #    else:
    #        for _t in _retrieve_tested_hashes():
    #            _print_summary_for_esmf_hash(_t["esmf_hash"])

    # if args["output_format"] == "html":

    template_env.globals["now"] = datetime.now(ZoneInfo("US/Mountain")).strftime("%Y-%m-%d %H:%M:%S %Z")

    _artifacts_base_url = _get_artifacts_base_url(_repo_path)
    logging.debug(f"Artifacts base URL: {_artifacts_base_url}")
    template_env.globals["artifacts_base_url"] = _artifacts_base_url

    _esmf_repo = None
    if args["esmf_repo"]:
        if not os.path.isdir(args["esmf_repo"]):
            logging.error(f"ESMF repository not found at: {args['esmf_repo']}")
        else:
            _esmf_repo = args["esmf_repo"]
            logging.info(f"Fetching ESMF repository: {args['esmf_repo']}")
            cmd.chdir(_esmf_repo)
            cmd.runcmd("git fetch --progress ")

    _branches = _retrieve_tested_branches()
    for _b in _branches:
        _branch = _b["esmf_branch"]
        for _t in _retrieve_tested_hashes(branch=_branch):
            _hash = _t["esmf_hash"]
            _outdir = os.path.join(args['output_dir'], _branch)
            cmd.runcmd(f"mkdir -p {_outdir}")
            _filename = os.path.join(_outdir, _hash + ".html")
            _format_hash_html(_hash, _branch, filename=_filename)
            _filename = os.path.join(_outdir, _hash + ".md")
            _format_hash_md(_hash, _branch, filename=_filename)

        _filename = os.path.join(_outdir, "index.html")
        _format_branch_summary_html(branch=_branch, filename=_filename)

    _combos = _retrieve_all_combinations()
    for _c in _combos:
        _outdir = os.path.join(args["output_dir"], "combos")
        _filename = os.path.join(_outdir, str(_c["combo_link"]) + ".html")
        _format_combo_summary_html(combo=_c, filename=_filename)

    _format_branch_list_html(filename=os.path.join(args["output_dir"], "index.html"))

    dbconn.close()
