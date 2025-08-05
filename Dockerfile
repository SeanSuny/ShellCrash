# 基础镜像
FROM alpine:latest

# 作者信息
LABEL maintainer="Sean" version="1.9.1"

# 环境变量
ENV TZ=Asia/Shanghai \
    ENV="/etc/profile"

# 工作目录
WORKDIR /root

# 复制文件并执行所有安装配置
COPY ./crash /root
RUN apk add --no-cache curl wget tzdata nftables ca-certificates \
    && cp /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone && apk del tzdata \
    # 安装ShellCrash
    && wget https://raw.githubusercontent.com/juewuy/ShellCrash/master/install.sh \
    && (echo "1"; sleep 2; echo "2"; sleep 2; echo "1"; sleep 2; echo "1") | sh install.sh \
    # 配置ShellCrash
    && source /etc/profile &> /dev/null \
    && (echo "2"; sleep 2; \
        echo "1"; sleep 2; \
        echo "1"; sleep 2; \
        echo "2"; sleep 2; \
        echo "1"; sleep 2; \
        echo "https://raw.githubusercontent.com/SeanSuny/ShellCrash/main/config.yaml"; sleep 2; \
        echo "1"; sleep 5; \
        echo "0"; sleep 2; \
        echo "0"; sleep 2; \
        echo "9"; sleep 2; \
        echo "2"; sleep 2; \
        echo "3"; sleep 5; \
        echo "4"; sleep 2; \
        echo "2"; sleep 5; \
        echo "0"; sleep 2; \
        echo "2"; sleep 2; \
        echo "1"; sleep 2; \
        echo "1"; sleep 2; \
        echo "7"; sleep 2; \
        echo "4"; sleep 2; \
        echo "0"; sleep 2; \
        echo "2"; sleep 2; \
        echo "2"; sleep 2; \
        echo "0"; sleep 2) | /etc/ShellCrash/menu.sh \
        && mv /etc/ShellCrash /etc/ShellCrash_bak && mkdir /etc/ShellCrash \
        && rm -rf /root/install.sh

# 端口和目录映射
EXPOSE 7890 9999
VOLUME /etc/ShellCrash

#启动命令
ENTRYPOINT ["sh","crashrun.sh"]
