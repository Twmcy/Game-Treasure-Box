#本脚本由　by Han | 情非得已c，编写
#应用于玩机百宝箱上


. $ShellScript/Termux/common.sh
if [[ $1 = -run ]]; then
    Check "DNA -run"
else
    Check DNA
fi
