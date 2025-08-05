<h1 align="center">
  <img src="https://github.com/SeanSuny/ShellCrash/raw/main/logo.png" alt="Clash" width="200">
  <br>ShellCrash<br>
</h1>

<p align="center">
  <a target="_blank" href="https://github.com/juewuy/ShellCrash/releases">
    <img src="https://img.shields.io/github/release/juewuy/ShellCrash.svg?style=flat-square&label=ShellCrash&colorB=green">
  </a>
  <a target="_blank" href="https://github.com/seansuny/shellcrash/actions/workflows/Build%20Image.yml">
    <img src="https://github.com/seansuny/shellcrash/actions/workflows/Build%20Image.yml/badge.svg">
  </a>
  <a target="_blank" href="https://github.com/seansuny/shellCrash">
    <img src="https://img.shields.io/github/last-commit/seansuny/ShellCrash">
  </a>
  <a target="_blank" href="https://github.com/seansuny/shellcrash">
    <img src="https://img.shields.io/github/commit-activity/m/seansuny/shellcrash">
  </a>
  <a target="_blank" href="https://hub.docker.com/r/seansuny/shellcrash/tags?page=1&ordering=last_updated">
    <img src="https://img.shields.io/docker/v/seansuny/shellcrash?style=flat">
  </a>
  <a target="_blank" href="https://hub.docker.com/r/seansuny/shellcrash">
    <img src="https://img.shields.io/docker/pulls/seansuny/shellcrash.svg?style=flat">
  </a>
  <a target="_blank" href="https://hub.docker.com/r/seansuny/shellcrash">
    <img src="https://img.shields.io/docker/stars/seansuny/shellcrash?style=flat">
  </a>
  <a target="_blank" href="https://hub.docker.com/r/seansuny/shellcrash">
    <img src="https://img.shields.io/docker/image-size/seansuny/shellcrash?style=flat">
  </a>
  <a target="_blank" href="https://hub.docker.com/r/seansuny/shellcrash">
    <img src="https://img.shields.io/github/repo-size/seansuny/shellcrash">
  </a>
</p>

功能简介：
--

~**Docker run部署：**<br>

```shell
docker run -dit \
--name ShellCrash \
--hostname ShellCrash \
--network bridge \
--restart always \
-p 7890:7890 \
-p 9999:9999 \
-v /opt/shellcrash:/etc/ShellCrash \
seansuny/shellcrash:latest
```

设备支持：
--

~支持CPU架构AMD64、ARM64两种架构<br>

——————————<br>
