#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/inf2015/dchristodoulou/CE435/LAB5/solution2/.autopilot/db/a.g.bc ${1+"$@"}
