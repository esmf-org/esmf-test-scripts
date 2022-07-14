#!/usr/bin/env python3

import argparse
import os.path
from collections import namedtuple
from datetime import datetime

import cmd
import logging
import re
import sqlite3

ComboRecord = namedtuple('ComboRecord', 'id, machine, compiler, compiler_ver, bopt, mpi, mpi_ver, netcdf')
ResultRecord = namedtuple('ResultRecord',
                          'hash, collect_ts, combination_id, esmf_hash, status, build, build_ts, unit_pass, unit_fail')


def _init_database():
    cur = dbconn.cursor()

    cur.execute("DROP TABLE IF EXISTS combination")
    cur.execute("DROP TABLE IF EXISTS result")

    cur.execute("""
        CREATE TABLE combination (
            id integer PRIMARY KEY,
            machine text NOT NULL,
            compiler text NOT NULL,
            compiler_ver text NOT NULL,
            bopt text NOT NULL,
            mpi text NOT NULL,
            mpi_ver text NOT NULL,
            netcdf next NOT NULL,
            UNIQUE (machine, compiler, compiler_ver, bopt, mpi, mpi_ver, netcdf)
        );    
        """)

    cur.execute("""
        CREATE TABLE result (
            hash text NOT NULL PRIMARY KEY,
            collect_ts datetime NOT NULL,            
            combination_id integer NOT NULL,
            esmf_hash text NOT NULL,
            status text NOT NULL,
            build text,
            build_ts datatime,
            unit_pass integer,
            unit_fail integer,
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
        WHERE machine=? AND compiler=? and compiler_ver=? AND bopt=? AND mpi=? AND mpi_ver=? AND netcdf=?
        """,
        combo[1:])
    _row = cur.fetchone()
    if _row is not None:
        # logging.debug(f" FOUND ID = {_row[0]}")
        return _row[0]
    else:
        cur.execute(
            """
            INSERT OR IGNORE INTO combination (machine, compiler, compiler_ver, bopt, mpi, mpi_ver, netcdf)
            VALUES (?,?,?,?,?,?,?)
            """,
            combo[1:])
        dbconn.commit()
        # logging.debug(f" INSERTED ID = {cur.lastrowid}")
        return cur.lastrowid


def _insert_result(result: ResultRecord):
    cur = dbconn.cursor()
    cur.execute(
        """
        INSERT INTO result (hash, collect_ts, combination_id, esmf_hash, status, build, build_ts, unit_pass, unit_fail)
        VALUES (?,?,?,?,?,?,?,?,?)
        """,
        result)
    dbconn.commit()
    # logging.debug(f" INSERTED ID = {cur.lastrowid}")
    return cur.lastrowid


def _retrieve_combo(combo: ComboRecord):
    cur = dbconn.cursor()
    cur.execute("""
        SELECT id FROM combination
        WHERE machine=? AND compiler=? AND compiler_ver=? AND mpi=? AND mpi_ver=? AND netcdf=?
        """)
    logging.debug(f"all: {cur.fetchall()}")


def _get_machine_list(repo):
    logging.info(f"Getting list of machines: {repo}")
    cmd.chdir(repo)
    branch_list = cmd.runcmd('git branch -a')
    logging.debug(f"Remote branches:\n{branch_list}")
    regex = re.compile(r"remotes/origin/(\w+)")
    machines = filter(lambda s: s not in ["HEAD", "main"],
                      regex.findall(branch_list))
    return list(machines)


def _get_commits(repo, machine_branch):
    logging.info(f"Getting history for branch: {machine_branch}")
    cmd.chdir(repo)
    cmd.runcmd(f"git checkout {machine_branch}")
    cmd.runcmd(f"git fetch origin {machine_branch}")
    cmd.runcmd(f"git reset --hard origin/{machine_branch}")
    _log_out = cmd.runcmd(f"git log --format='%H %aI %s' -n 10")
    _log_list = _log_out.splitlines()

    for _log_entry in _log_list:
        # logging.debug(_log_entry)
        _commit_dict = {"hash": _log_entry[0:40],  # hash of artifacts commit
                        "ts": _log_entry[41:66],   # timestamp of artifacts commit
                        "action": _extract(r"action=(\S+)", _log_entry),
                        "dir": _extract(r"dir=(\S+)", _log_entry),
                        # TODO: change hash to esmf_hash in commit message
                        "esmf_hash": _extract(r"hash=(\S+)", _log_entry), # hash of ESMF tested
                        "esmf_branch": _extract(r"branch=(\S+)", _log_entry) # branch of ESMF tested
                        }
        # logging.debug(f"_commit_dict = {_commit_dict}")

        if _commit_dict["action"] == "collect":
            _collect_summary_stats(_commit_dict, machine_branch)


def _extract(regex, string):
    _match = re.search(regex, string)
    if _match is not None:
        return _match.group(1)
    else:
        return None


def _collect_summary_stats(commit, machine_branch):
    _hash = commit["hash"]
    logging.info(f"Get summary stats for artifacts commit: {_hash}")
    cmd.runcmd(f"git checkout {_hash}")
    _file_list = cmd.runcmd(f"git show {_hash} --oneline --name-only")
    _m = re.search(
        r"(?P<branch>\S+)/(?P<compiler>\S+)/(?P<compiler_ver>\S+)/(?P<bopt>\S+)/(?P<mpi>\S+)/(?P<mpi_ver>\S+)/summary\.dat",
        _file_list)
    if _m is not None:
        _summary_file = _m.group(0)

        _combo = ComboRecord._make((None, machine_branch, _m["compiler"], _m["compiler_ver"],
                                    _m["bopt"], _m["mpi"], _m["mpi_ver"], "netcdf"))
        _combo_id = _insert_combo(_combo)
        logging.debug(f"\tcombo = {_combo}\t id = {_combo_id}")

        _summary_text = cmd.runcmd(f"cat {_summary_file}")
        # logging.debug(_summary_text)
        _esmf_hash = _extract(r"ESMF hash: (\S+)", _summary_text)
        _build_ts = _extract(r"Build timestamp from esmf\.mk:\s+(.+)\n", _summary_text)


        #  hash, collect_ts, combination_id, esmf_hash, status, build, build_ts, unit_pass, unit_fail
        _result = ResultRecord._make((_hash, commit["ts"], _combo_id, _esmf_hash, 'S', 'PASS', _build_ts, 100, 200))
        logging.debug(f"RESULT: {_result}")
        _insert_result(_result)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='A tool to summarize ESMF test artifacts')
    parser.add_argument('-a', '--artifacts-repo', help='Location of artifacts', required=True)
    parser.add_argument('-d', '--database-root', help="""
        Directory to store internal results database. If the DB exists in this directory it
        will be updated with the most recent results. Otherwise, a new one will be created.  
        """, required=True)

    args = vars(parser.parse_args())

    logging.basicConfig(format='%(levelname)s: %(message)s', level=logging.DEBUG)
    _repo_path = args["artifacts_repo"]
    _db_path = args["database_root"]

    if not os.path.isdir(_repo_path):
        logging.error(f"No artifacts repository found at: {_repo_path}")
        exit(1)

    if not os.path.isdir(_db_path):
        logging.error(f"Database directory must already exist: {_db_path}")
        exit(1)

    dbconn = sqlite3.connect(f"{os.path.join(_db_path, 'esmf_test_summary.sqlite3')}")

    _init_database()
    # _insert_combo()

    # _retrieve_data()

    # _mach_list = _get_machine_list(_repo_path)
    # logging.debug(_mach_list)

    # for _m in _mach_list:
    _get_commits(_repo_path, "cheyenne")
    _get_commits(_repo_path, "catania")

    dbconn.close()
