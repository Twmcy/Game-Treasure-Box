<?xml version="1.0" encoding="utf-8"?>
<resource dir="file:///android_asset/Configuration_File/" />

<group>

    <action auto-off="true" interruptible="false">
        <title>Uper Games Turbo 已运行</title>
        <summary sh="mymodule" />
        <desc></desc>
        <set>
        cp "${json:="$json2"}" /sdcard/Android/yc/uperf/</set>
        <params>
            <param name="json" type="file" suffix="json" editable="true" required="true" title="选择配置文件" desc="" />
        </params>
    </action>

      <text>
            <title>当前设置FPS</title>
            <summary sh=". ./fps/fpsgameSettings" />
        </text>
  

        <text>
            <title>我的游戏</title>
        <desc></desc>
            <summary sh=". ./fps/mymodule3" />
        </text>
 
 
        <text>
            <title>已添加旁电充电应用</title>
            <summary sh=". ./fps/mymodule4" />
        </text>
    
        <text>
            <title>已添加调度应用</title>
            <summary sh=". ./fps/mymodule2" />
        </text>
        
        
        <text>
            <title>已添加fas-rs</title>
            <summary sh=". ./fps/mymodule7" />
        </text>
        
  
    </group>

    <group>
  
    <action auto-off="true" interruptible="false">
            <title>安装模块</title>
            
            <param name="test">
                <option value="magiskinstall">Magisk</option>
                <option value="kernelsuinstall1">KernelSU</option>
            </param>
            
            <param name="test2">
                <option value="/data/data/com.root.system/files/usr/xbin/far2.zip">帧率</option>
                <option value="/data/data/com.root.system/files/usr/xbin/far.zip">调度</option>
                <option value="/data/data/com.root.system/files/usr/xbin/module.zip">旁路供电</option>
                <option value="/data/data/com.root.system/files/usr/xbin/fas-rs.zip">fas-rs</option>
            </param>
            <set>
            "$test" "$test2"
               </set>
        </action>

</group>
   <!--group>
        <page title="功能详细" config-sh="cat $Pages/fps/help.sh" />
        <page title="功能帮助" config-sh="cat $Pages/fps/help2.sh" />
        <page title="功能常见问题" config-sh="cat $Pages/fps/error.sh" />
   </group-->