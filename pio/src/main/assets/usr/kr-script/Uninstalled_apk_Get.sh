#本脚本由　by Han | 情非得已c，编写
#应用于玩机百宝箱上


A() {
    pm list packages -u
    pm list packages -e
}

A | sort | uniq -u | cut -f2 -d ':'
