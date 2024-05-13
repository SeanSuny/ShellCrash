# 基础镜像
FROM alpine:latest

# 作者信息
MAINTAINER Sean

WORKDIR /root

# 将目录下的文件copy到镜像中
COPY ./crash /root

# 安装软件,修改系统时间
RUN apk add --no-cache curl wget tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo Asia/Shanghai > /etc/timezone && apk del tzdata \
    && wget https://raw.githubusercontent.com/juewuy/ShellCrash/master/install.sh && (echo "1"; sleep 2; echo "2"; sleep 2; echo "1"; sleep 2; echo "1") | sh install.sh \
    && source /etc/profile &> /dev/null && (echo "2"; sleep 2; echo "0"; sleep 2; echo "1"; sleep 2; echo "1"; sleep 2; echo "2"; sleep 2; echo "1"; sleep 2; echo "https://suo.yt/4oz7ctI"; sleep 2; echo "1"; sleep 5; echo "1"; sleep 5; echo "0") | /etc/ShellCrash/menu.sh && mv /etc/ShellCrash /etc/ShellCrash_bak && mkdir /etc/ShellCrash

#设置环境变量
ENV ENV="/etc/profile"

#启动命令
ENTRYPOINT ["sh","crashrun.sh"]
