<h1 align="center">
  <img src="https://github.com/SeanSuny/ShellCrash/raw/main/logo.png" alt="ShellCrash" width="200">
  <br>ShellCrash<br>
</h1>

[![GitHub version](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fraw.githubusercontent.com%2Fjuewuy%2FShellCrash%2Fmaster%2Fversion&search=.%2B&logo=github&label=ShellCrash&color=limegreen)](https://github.com/juewuy/ShellCrash/tree/master)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/seansuny/shellcrash/docker-shellcrash.yml?logo=github-actions&label=Build)](https://github.com/seansuny/shellcrash/actions/workflows/docker-shellcrash.yml)
[![Docker version](https://img.shields.io/docker/v/seansuny/shellcrash?logo=docker&label=Version&color=green)](https://hub.docker.com/r/seansuny/shellcrash)
[![Docker Pulls](https://img.shields.io/docker/pulls/seansuny/shellcrash?logo=docker&label=Pulls&color=blue)](https://hub.docker.com/r/seansuny/shellcrash)
[![Docker stars](https://img.shields.io/docker/stars/seansuny/shellcrash?logo=docker&label=Stars&color=blue)](https://hub.docker.com/r/seansuny/shellcrash)
[![Docker Image Size](https://img.shields.io/docker/image-size/seansuny/shellcrash?logo=docker&label=Size&color=orange)](https://hub.docker.com/r/SeanSuny/shellcrash)

## 功能简介

**Docker run部署：**

```shell
docker run -dit \
--name ShellCrash \
--hostname ShellCrash \
--network bridge \
--restart always \
-p 7890:7890 \
-p 9999:9999 \
-v ./ShellCrash/Data:/etc/ShellCrash \
-v ./ShellCrash/Tmp:/tmp/ShellCrash \
seansuny/shellcrash:latest
```

### 设备支持

支持CPU架构AMD64、ARM64两种架构
