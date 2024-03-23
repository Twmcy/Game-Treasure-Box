db_Dir="/data/adb/lspd/config"
db_File="$db_Dir/modules_config.db"
TMPDIR0="$Script_Dir"
db_sql="$TMPDIR0/modules_config.sql"
db_File2="$TMPDIR0/modules_config.db"
Modules_List="$TMPDIR0/Modules_List.log"

[[ -e $TMPDIR0 ]] && rm -rf $TMPDIR0
mkdir $TMPDIR0

cp $db_File $TMPDIR0
sqlite3 "$db_File" .dump >$db_sql
if [[ $? != 0 ]]; then
    echo "开始查看sqlite3是否兼容您的设备"
    sqlite3 --help
    echo "! 不支持的设备"
    exit 1
fi

grep "INSERT INTO modules VALUES" $db_sql | awk -F "("  '{print $2}' | awk -F ")" '{print $1}' > $Modules_List
Module_status=`grep "$Module_package" $Modules_List`
Module_ID=`echo $Module_status | awk -F ","  '{print $1}'`
echo "当前设置模块包名：$Module_package"
echo "当前设置模块ID：$Module_ID"

if [[ -n $Module_package ]]; then
    sed -i "/INSERT INTO scope VALUES($Module_ID,/d" $db_sql
else
    echo "未选择模块"
fi
#去重
awk '!a[$0]++' $db_sql > $db_sql.tmp && mv -f $db_sql.tmp $db_sql

[[ -f $db_File2 ]] && rm $db_File2
sqlite3 "$db_File2" < "$db_sql"
mv -f "$db_File2" "$db_Dir"
echo "已清空$Module_package的作用域"
rm -rf $TMPDIR0
