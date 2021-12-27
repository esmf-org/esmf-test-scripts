import os


def get_header_list(mpi_flavor):
    if "pythontest" in mpi_flavor:
        return ["build", "test", "python"]
    return ["build", "test"]


def write_bash_header(_file):
    _file.write("#!/bin/bash -l\n")
    _file.write(f"cd {os.getcwd()}\n")
    _file.write("export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n\n")

    _file.write(f"cd {os.getcwd()}/src/addon/ESMPy\n")


def generate_script(type, dto):
    _map = {
        "build": f"build-{dto.comp}_{dto.ver}_{dto.key}_{dto.build_type}.bat",
        "test": f"test-{dto.comp}_{dto.ver}_{dto.key}_{dto.build_type}.bat",
    }

    try:
        file_name = _map["header_type"]
    except LookupError:
        file_name = "runpython.sh"

    with open(file_name, "w") as _file:
        if type not in _map.keys():
            write_bash_header(file_name)


def write_unload_module(_file):
    _file.write("\nmodule unload {}\n".format(machine_list[comp]["unloadmodule"]))


def write_module_path(_file):
    _file.write("\nmodule use {}\n".format(machine_list["modulepath"]))


def write_extra_module(_file):
    _file_out.write("\nmodule load {}\n".format(machine_list[comp]["extramodule"]))


def write_machine_list_info(keys, *args, **kwargs):
    _map = {
        "unloadmodule": write_unload_module,
        "modulepath": write_module_path,
        "extramodule": write_extra_module,
    }

    for key in keys:
        _map[key](args, kwargs)


def write_script(header_type):
    file_path = get_file_path(header_type, None, None, None, None)
    with open(file_path, "w") as file_out:
        write_machine_list_info(machine_list)

        if "unloadmodule" in machine_list[comp]:
            file_out.write(
                "\nmodule unload {}\n".format(machine_list[comp]["unloadmodule"])
            )
        if "modulepath" in machine_list:
            modulepath = machine_list["modulepath"]
            file_out.write("\nmodule use {}\n".format(machine_list["modulepath"]))
        if "extramodule" in machine_list[comp]:
            file_out.write(
                "\nmodule load {}\n".format(machine_list[comp]["extramodule"])
            )

        if mpiflavor["module"] == "None":
            mpiflavor["module"] = ""
            cmdstring = (
                "export ESMF_MPIRUN={}/src/Infrastructure/stubs/mpiuni/mpirun\n".format(
                    os.getcwd()
                )
            )
            file_out.write(cmdstring)

        if "mpi_env_vars" in mpidict[key]:
            for mpi_var in mpidict[key]["mpi_env_vars"]:
                file_out.write(
                    "export {}\n".format(mpidict[key]["mpi_env_vars"][mpi_var])
                )

        if self.machine_list[comp]["versions"][ver]["netcdf"] == "None":
            modulecmd = "module load {} {} \n\n".format(
                self.machine_list[comp]["versions"][ver]["compiler"],
                mpiflavor["module"],
            )
            esmfnetcdf = "\n"
            file_out.write(modulecmd)
        else:
            modulecmd = "module load {} {} {}\n".format(
                self.machine_list[comp]["versions"][ver]["compiler"],
                mpiflavor["module"],
                self.machine_list[comp]["versions"][ver]["netcdf"],
            )
            esmfnetcdf = "export ESMF_NETCDF=nc-config\n\n"
            file_out.write(modulecmd)

        if "hdf5" in self.machine_list[comp]["versions"][ver]:
            modulecmd = "module load {} \n".format(
                self.machine_list[comp]["versions"][ver]["hdf5"]
            )
            file_out.write(modulecmd)
        if "netcdf-fortran" in self.machine_list[comp]["versions"][ver]:
            modulecmd = "module load {} \n".format(
                self.machine_list[comp]["versions"][ver]["netcdf-fortran"]
            )
            file_out.write(modulecmd)

        if header_type == "build":
            file_out.write("module list >& module-build.log\n\n")
        elif header_type == "test":
            file_out.write("module list >& module-test.log\n\n")

        file_out.write("set -x\n")
        file_out.write(esmfnetcdf)

        if "extra_env_vars" in self.machine_list[comp]["versions"][ver]:
            for var in self.machine_list[comp]["versions"][ver]["extra_env_vars"]:
                file_out.write(
                    "export {}\n".format(
                        self.machine_list[comp]["versions"][ver]["extra_env_vars"][var]
                    )
                )

        if "extra_commands" in self.machine_list[comp]["versions"][ver]:
            for cmd in self.machine_list[comp]["versions"][ver]["extra_commands"]:
                file_out.write(
                    "{}\n".format(
                        self.machine_list[comp]["versions"][ver]["extra_commands"][cmd]
                    )
                )

        cmdstring = "export ESMF_DIR={}\n".format(os.getcwd())
        file_out.write(cmdstring)

        cmdstring = "export ESMF_COMPILER={}\n".format(comp)
        file_out.write(cmdstring)

        cmdstring = "export ESMF_COMM={}\n".format(key)
        file_out.write(cmdstring)

        cmdstring = "export ESMF_BOPT='{}'\n".format(build_type)
        file_out.write(cmdstring)

        cmdstring = "export ESMF_TESTEXHAUSTIVE='ON'\n"
        file_out.write(cmdstring)

        cmdstring = "export ESMF_TESTWITHTHREADS='ON'\n"
        file_out.write(cmdstring)

        if header_type == "build":
            #       cmdstring = "make -j {} clean 2>&1| tee clean_$JOBID.log \nmake -j {} 2>&1| tee build_$JOBID.log\n\n".format(self.cpn,self.cpn)
            cmdstring = "make -j {} 2>&1| tee build_$JOBID.log\n\n".format(self.cpn)
            file_out.write(cmdstring)
        elif header_type == "test":
            cmdstring = "make info 2>&1| tee info.log \nmake install 2>&1| tee install_$JOBID.log \nmake all_tests 2>&1| tee test_$JOBID.log \n"
            file_out.write(cmdstring)
            file_out.write(
                "ssh {} {}/{}/getres-int.sh\n".format(
                    self.headnodename, self.script_dir, os.getcwd()
                )
            )
            cmdstring = (
                "export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n"
            )
            file_out.write(cmdstring)
            if mpiflavor["module"] != "None":
                cmdstring = "chmod +x runpython.sh\ncd nuopc-app-prototypes\n./testProtos.sh 2>&1| tee ../nuopc_$JOBID.log \n\n"
            file_out.write(cmdstring)
            file_out.write(
                "ssh {} {}/{}/getres-int.sh\n".format(
                    self.headnodename, self.script_dir, os.getcwd()
                )
            )
        else:
            cmdstring = "python3 setup.py test_examples_dryrun\npython3 setup.py test_regrid_from_file_dryrun\npython3 setup.py test_regrid_from_file_dryrun\n"
            file_out.write(cmdstring)
        #       file_out.write("ssh {} {}/{}/getres-int.sh\n".format(self.headnodename,self.script_dir,os.getcwd()))

        if ("pythontest" in mpiflavor) and (header_type == "test"):

            cmdstring = "\ncd ../src/addon/ESMPy\n"
            file_out.write(cmdstring)
            cmdstring = "\nexport PATH=$PATH:$HOME/.local/bin\n".format(os.getcwd())
            file_out.write(cmdstring)
            cmdstring = "python3 setup.py build 2>&1 | tee python_build.log\n".format(
                self.headnodename
            )
            file_out.write(cmdstring)
            cmdstring = "ssh {} {}/runpython.sh 2>&1 | tee python_build.log\n".format(
                self.headnodename, os.getcwd()
            )
            file_out.write(cmdstring)
            cmdstring = "python3 setup.py test 2>&1 | tee python_test.log\n".format(
                self.headnodename
            )
            file_out.write(cmdstring)
            cmdstring = "python3 setup.py test_examples 2>&1 | tee python_examples.log\n".format(
                self.headnodename
            )
            file_out.write(cmdstring)
            cmdstring = "python3 setup.py test_regrid_from_file 2>&1 | tee python_regrid.log\n".format(
                self.headnodename
            )
            file_out.write(cmdstring)
            file_out.close()
            mpimodule = mpiflavor["module"]
            if mpimodule == "":
                self.mpiver = "None"
            else:
                self.mpiver = mpiflavor["module"].split("/")[-1]


def createScripts(build_type, comp, ver, mpidict, mpitypes, key, branch):

    mpi_flavor = mpidict[key]
    header_list = get_header_list(mpi_flavor)

    for header_type in header_list:
        pass
