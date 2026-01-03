#!bin/sh
source /etc/profile

# 检测并补全文件
if [ -z "$(ls -A /etc/ShellCrash)" ] || [ ! -f "/etc/ShellCrash/start.sh" ]; then
    # 如果文件夹为空，则运行指定命令
    cp -r /etc/ShellCrash_bak/* /etc/ShellCrash
fi

# 启动服务
crash -s start
