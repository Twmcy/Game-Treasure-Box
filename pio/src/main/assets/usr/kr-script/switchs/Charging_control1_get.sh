#本脚本由　by Han | 情非得已c，编写
#应用于玩机百宝箱上


Status=`[[ -f $Charging_control ]] && cat $Charging_control`
Status2=`[[ -f $Charging_control2 ]] && cat $Charging_control2`

if [[ $Status = 1 || $Status2 = 0 ]]; then
    echo 1
else
    echo 0
fi
 