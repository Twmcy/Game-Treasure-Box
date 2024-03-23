#!/bin/bash

if [ -d "/sdcard/Android/yc/dfps/" ] && [ -d "/sdcard/Android/yc/uperf/" ]; then
   cat $Pages/fps.sh
 else
     cat $Pages/fpsno.sh
fi
