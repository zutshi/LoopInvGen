#!/bin/bash

usage() {
  echo "
Usage: $0 [flags]

Flags:
    [--optimize, -O]        Optimize for speed (build takes MUCH longer!)
    [--star-exec, -S]       Generate package for running on StarExec

Configuration:
    [--make-z3, -z <path>]  Also build a specialized version of `z3`
    [--jobs, -j <num>]      Use <num> jobs in `make`
" 1>&2 ;
  exit 1 ;
}

OPTS=`getopt -n 'parse-options' -o :OSz:j: --long optimize,starexec,make-z3:,jobs: -- "$@"`
if [ $? != 0 ] ; then usage ; fi

eval set -- "$OPTS"

JOBS="4"
MAKE_Z3=""
STAREXEC=""

jbuilder build -f @fast-compile
while true ; do
  case "$1" in
    -z | --make-z3 )
         MAKE_Z3="$2" ;
         shift ; shift ;;
    -j | --jobs )
         JOBS="$2" ;
         shift ; shift ;;
    -O | --optimize )
         jbuilder build -f @optimize
         shift ;;
    -S | --star-exec )
         STAREXEC="YES" ;
         shift ;;
    -- ) shift; break ;;
    * ) break ;;
  esac
done

if [ -n "$MAKE_Z3" ] ; then
  LIG=`pwd`
  Z3_BUILD_DIR="build_for_pie"
  cd "$MAKE_Z3"

  rm -rf "$Z3_BUILD_DIR"
  mkdir -p "$Z3_BUILD_DIR"

  python2.7 scripts/mk_make.py --staticbin --staticlib \
                               --build "$Z3_BUILD_DIR"

  cd "$Z3_BUILD_DIR"
  make -j "$JOBS"

  mkdir -p "$LIG/_dep"
  cp z3 "$LIG/_dep/z3"
  cd "$LIG"
fi

jbuilder build @local -p LoopInvGen -j "$JOBS"
if [ -z "$STAREXEC" ] ; then exit 0 ; fi

rm -rf starexec && mkdir -p starexec/bin

cp -rL _bin _dep starexec/bin

cat << "EOF" > starexec/bin/starexec_run_default
#!/bin/bash

TESTCASE="$1"
TESTCASE_NAME="`basename "$TESTCASE" "$SYGUS_EXT"`"

RECORD_FORKS=2
RECORD_TIMEOUT=1s
RECORD_STATES_PER_FORK=512

for i in `seq 1 $RECORD_FORKS` ; do
  (timeout --kill-after=$RECORD_TIMEOUT $RECORD_TIMEOUT           \
           _bin/lig-record -z _dep/z3 -s $RECORD_STATES_PER_FORK  \
                           -r "seed$i" -o $TESTCASE_NAME.r$i $TESTCASE) >&2
done
grep -hv "^[[:space:]]*$" $TESTCASE_NAME.r* > $TESTCASE_NAME.states

_bin/lig-infer -z _dep/z3 -s $TESTCASE_NAME.states $TESTCASE
EOF
chmod +x starexec/bin/starexec_run_default

cat << "EOF" > starexec/bin/starexec_run_debug
#!/bin/bash

pwd
ls -lah

file _dep/z3 _bin/lig-record _bin/lig-infer _bin/lig-verify
ldd _dep/z3 _bin/lig-record _bin/lig-infer _bin/lig-verify

_dep/z3
_bin/lig-record -h
_bin/lig-infer -h
_bin/lig-verify -h
EOF
chmod +x starexec/bin/starexec_run_debug

cat <<EOF > starexec/starexec_description.txt
A loop invariant inference tool built using PIE: precondition inference engine.

https://github.com/SaswatPadhi/LoopInvGen
EOF

chmod -R 777 starexec/bin

echo -ne "\nPreparing starexec package (starexec/):\n"
cd starexec
tar cvzf ../LoopInvGen_SyGuS_INV.tgz ./*
cd .. ; rm -rf starexec