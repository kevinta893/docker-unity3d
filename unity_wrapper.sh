#!/bin/sh
LOG_FILE=./log/unity-linux.log
UNITY_OPTIONS="-batchmode -quit -force-opengl -nographics -silent-crashes -buildLinux64Player $(pwd)/build/linux64/ci-build.app -logFile $LOG_FILE"

E_NOARGS=85
if [ -z "$1" ]
then
 echo "Usage: `basename $0` <unity editor arguments>"
 exit $E_NOARGS
fi

xvfb-run --error-file /var/log/xvfb_error.log --server-args="-screen 0 1024x768x24" \
 /opt/Unity/Editor/Unity $UNITY_OPTIONS $@
