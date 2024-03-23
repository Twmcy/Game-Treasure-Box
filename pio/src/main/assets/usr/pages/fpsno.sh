<?xml version="1.0" encoding="UTF-8" ?>
<group>
        <text>
            <title>Error</title>
            <desc>我们无法找到模块，可能是被破坏或者没有安装，需要安装调度和帧率！</desc>
        </text>        
    </group>

<group>
<action>
            <title>安装模块</title>
            
            <param name="test">
                <option value="magiskinstall">Magisk</option>
                <option value="kernelsuinstall1">KernelSU</option>
            </param>
            
            <param name="test2">
                <option value="/data/data/com.root.system/files/usr/xbin/far2.zip">帧率</option>
                <option value="/data/data/com.root.system/files/usr/xbin/far.zip">调度</option>
                <option value="/data/data/com.root.system/files/usr/xbin/module.zip">旁路供电</option>
            </param>
            <set>
            "$test" "$test2"
               </set>
        </action>


</group>