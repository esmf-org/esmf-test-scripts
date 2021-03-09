#! /bin/bash
# Interactive ESMF_MPIRUN turning -np into -n for aprun on conrad
# On conrad MPIRUN_EXEC is set to absolute path of aprun
#           ESMF_MPIRUN is set to the absolute path of this script

for arg in "$@"; do
  shift
  case "$arg" in
    "-np") set -- "$@" "-n" ;;
    *)        set -- "$@" "$arg"
  esac
done

if [[ ! -f $MPIRUN_EXEC || $MPIRUN_EXEC != /* ]]; then
  echo "MPIRUN_EXEC file $MPIRUN_EXEC is not found or is not absolute in path, fix it, abort"
  exit 1
fi

echo "$MPIRUN_EXEC $@"

$MPIRUN_EXEC $@
