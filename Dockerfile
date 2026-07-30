# 基础镜像
FROM alpine:latest

# 作者信息
ARG VERSION
LABEL org.opencontainers.image.maintainer="Sean"
LABEL org.opencontainers.image.version=$VERSION

# 环境变量
ENV TZ=Asia/Shanghai \
    ENV=/etc/profile \
    url_install=https://raw.githubusercontent.com/juewuy/ShellCrash/master/install.sh

# 工作目录
WORKDIR /root

# 复制文件并执行所有安装配置
COPY /crash /root
RUN apk add --no-cache curl tzdata nftables \
    && cp /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone && apk del tzdata \
    && mkdir -p /usr/share/zoneinfo/Asia \
    && cp /etc/localtime /usr/share/zoneinfo/Asia/Shanghai \
    # 安装ShellCrash
    && (echo "1"; sleep 2; echo "1"; sleep 2; echo "1"; sleep 3; echo "1"; sleep 2; echo "1") | \
    sh -c "$(curl -kfsSl $url_install | \
    sed 's|url="https://testingcf.jsdelivr.net/gh/juewuy/ShellCrash@dev"|url="https://raw.githubusercontent.com/juewuy/ShellCrash/master"|g')" \
    # 配置ShellCrash
    && source /etc/profile &> /dev/null \
    && (echo "2"; sleep 2; \
        echo "1"; sleep 3; \
        echo "1"; sleep 2; \
        echo "1"; sleep 2; \
        echo "https://raw.githubusercontent.com/SeanSuny/ShellCrash/main/config.yaml"; sleep 2; \
        echo "1"; sleep 5; \
        echo "0"; sleep 2; \
        echo "0"; sleep 5; \
        echo "0"; sleep 2) | /etc/ShellCrash/menu.sh \
    && (echo "9"; sleep 5; \
        echo "2"; sleep 2; \
        echo "1"; sleep 5; \
        echo "4"; sleep 2; \
        echo "3"; sleep 5; \
        echo "0"; sleep 2; \
        echo "0"; sleep 2; \
        echo "2"; sleep 2; \
        echo "1"; sleep 2; \
        echo "1"; sleep 2; \
        echo "7"; sleep 2; \
        echo "1"; sleep 2; \
        echo "0"; sleep 2; \
        echo "2"; sleep 2; \
        echo "1"; sleep 2; \
        echo "0"; sleep 2; \
        echo "0"; sleep 2; \
        echo "0"; sleep 2) | /etc/ShellCrash/menu.sh \
        && cp -r /etc/ShellCrash /etc/ShellCrash_bak && rm -rf /root/install.sh
        

# 端口和目录映射
EXPOSE 7890 9999
VOLUME /etc/ShellCrash
VOLUME /tmp/ShellCrash

#启动命令
ENTRYPOINT ["sh","crashrun.sh"]
