#本脚本由　by Han | 情非得已c，编写
#应用于玩机百宝箱上


if [[ $1 = -system ]]; then
    f=/system/etc/hosts
elif [[ $1 = -mask ]]; then
    f=$Modules_Dir/Han.GJZS-MIUI/system/etc/hosts
fi
    if [[ `grep -cs update.miui.com $f` -ge 1 ]]; then
        echo 1
    else
        echo 0
    fi
