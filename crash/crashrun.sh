#!bin/sh
source /etc/profile

# 检测/etc/ShellCrash文件夹是否为空
if [ -z "$(ls -A /etc/ShellCrash)" ]; then
    # 如果文件夹为空，则运行指定命令
    cp -rL /etc/ShellCrash_bak/* /etc/ShellCrash
    /etc/ShellCrash/start.sh start 2>/dev/nul
    echo "ShellCrash启动成功，请进入容器，输入crash进行管理！"
else
    # 如果文件不为空，则运行指定命令
    /etc/ShellCrash/start.sh start 2>/dev/nul
    echo "ShellCrash启动成功，请进入容器，输入crash进行管理！"
fi
sh
