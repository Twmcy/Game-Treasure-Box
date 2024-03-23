#!/bin/bash

# 查找当前目录及其子目录中所有 .txt 文件
find . -type f -name "*" -print0 | while read -d $'\0' file
do
    # 使用 sed 将文件中的 "test" 替换为 "txt22"
    sed -i 's/com.root.system/com.root.system/g' "${file}"

    echo "文件内容已修改：${file}"
done