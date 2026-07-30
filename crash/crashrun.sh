#!bin/sh
source /etc/profile

# 检测并补全文件
if [ -z "$(ls -A /etc/ShellCrash)" ] || [ ! -f "/etc/ShellCrash/start.sh" ]; then
    # 如果文件夹为空，则运行指定命令
    cp -r /etc/ShellCrash_bak/* /etc/ShellCrash
fi

# 启动服务
/etc/ShellCrash/start.sh start /dev/null 2>&1
echo "ShellCrash启动成功，请进入容器，输入crash进行管理！"

# 保持容器运行
exec sh
