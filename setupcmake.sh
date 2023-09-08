#!/bin/bash

DEFS=""
CONFIG="Release"

if [ -n "${AAX_SDK_PATH}" ] ; then
  echo "Will build AAX plugin"
  DEPS="$DEPS -DAAX_SDK_PATH=${AAX_SDK_PATH}"
fi

if [ -n "${VST2_SDK_PATH}" ] ; then
  echo "Will build VST2 plugin"
  DEPS="$DEPS -DVST2_SDK_PATH=${VST2_SDK_PATH}"
fi


if [ "$1" = "debug" ] ; then
  CONFIG="Debug"
fi

cmake -DCMAKE_BUILD_TYPE=$CONFIG $DEPS -B build




