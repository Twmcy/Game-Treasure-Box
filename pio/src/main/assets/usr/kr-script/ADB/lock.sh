#本脚本由　by Han | 情非得已c，编写
#应用于玩机百宝箱上


[[ $lock = 1 ]] && fastboot flashing lock
[[ $lock = 2 ]] && fastboot oem lock
[[ $lock = 3 ]] && fastboot oem relock $key
