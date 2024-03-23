<?xml version="1.0" encoding="utf-8"?>
<group>

    <action auto-off="true" interruptible="false">
        <title>游戏帧率</title>
        <desc></desc>
        <param name="fps" type="app" />
        <param name="fps1" max="144" min="30" title="最小帧率" type="seekbar" value="50" />  
        <param name="fps2" max="144" min="30" title="最大帧率" type="seekbar" value="50" />
                required="required" type="int" />
        <set>. ./fps/fas.sh</set>
    </action>
    
    <action auto-off="true" interruptible="false">
        <title>保持标准设置</title>
        <desc></desc>
    <params>
            <param name="off" title="为了防止误操作，false是关,true是开" required="true" />
        </params>
        <set>. ./fps/fas_settings_1.sh</set>
    </action>
    
    <action auto-off="true" interruptible="false">
        <title>CPU 调度器</title>
        <desc></desc>
    <params>
            <param name="off" title="为了防止误操作，false是关,true是开" required="true" />
        </params>
        <set>. ./fps/fas_settings_2.sh</set>
    </action>
</group>


<group>

    <action auto-off="true" interruptible="false">
        <title>节能模式设置</title>
        <desc></desc>
    <params>
            <param name="off" title="是否启用 FAS 加速,为了防止误操作，false是关,true是开" required="true" />
             <param name="off1" title="是否使用性能调度程序,为了防止误操作，false是关,true是开" required="true" />
        </params>
        <set>. ./fps/fas_settings_3.sh
        . ./fps/fas_settings_3_s.sh</set>
    </action>
    
    
    <action auto-off="true" interruptible="false">
        <title>平衡模式设置</title>
        <desc></desc>
    <params>
            <param name="off" title="是否启用 FAS 加速,为了防止误操作，false是关,true是开" required="true" />
             <param name="off1" title="是否使用性能调度程序,为了防止误操作，false是关,true是开" required="true" />
        </params>
        <set>. ./fps/fas_settings_4.sh
        . ./fps/fas_settings_4_s.sh</set>
    </action>
    
    <action auto-off="true" interruptible="false">
        <title>性能模式设置</title>
        <desc></desc>
    <params>
            <param name="off" title="是否启用 FAS 加速,为了防止误操作，false是关,true是开" required="true" />
             <param name="off1" title="是否使用性能调度程序,为了防止误操作，false是关,true是开" required="true" />
        </params>
        <set>. ./fps/fas_settings_5.sh
        . ./fps/fas_settings_5_s.sh</set>
    </action>
    
    <action auto-off="true" interruptible="false">
        <title>极速模式设置</title>
        <desc></desc>
    <params>
            <param name="off" title="是否启用 FAS 加速,为了防止误操作，false是关,true是开" required="true" />
             <param name="off1" title="是否使用性能调度程序,为了防止误操作，false是关,true是开" required="true" />
        </params>
        <set>. ./fps/fas_settings_6.sh
        . ./fps/fas_settings_6_s.sh</set>
    </action>
</group>