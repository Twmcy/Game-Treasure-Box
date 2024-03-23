#!/bin/bash


echo ""

function busybox_install() {
    for applet in `busybox --list`; do
        case "$applet" in
        "sh"|"busybox")
            echo 'Skip' > /dev/null
        ;;
        *)
            busybox ln -sf busybox "$applet";
        ;;
        esac
    done
    echo '' > busybox_installed
}

mkdir /sdcard/Documents/com.root.system/  >/dev/null 2>&1
mkdir /sdcard/RootES  >/dev/null 2>&1
ln -s $PREFIX/xbin /system/bin/magisk >/dev/null 2>&1
ln -s $PREFIX/xbin /system/xbin/magisk >/dev/null 2>&1
                 if [ ! -f "/data/adb/modules/startboot/module.prop" ]; then
   echo '未安装模块'
else
  echo 
fi

echo 正在UI加载中...
