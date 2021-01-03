# repo_debian
debian内网源
# 使用方法
## 使用Dockerfile构建镜像
下载git库后执行命令，在安装docker的Linux环境下执行命令
docker build -t [自定义镜像名] .
如，自定义镜像使用名称为debian:repo
## 下载aptrepo的本地库，或者同步其他网络源，此处以同步本地库为例
已有本地库下载地址： 
将本地库放在/home/aptrepo下为例

## 使用构建的镜像创建内网服务器的容器
- docker run -tid --name="repo_debian" -v /home/aptrepo:/home/aptrepo debian:repo

## 其他CentOS7环境配置此内网源(需要与内网服务器容器网络互通)
- 登录其他内网Debian9的主机后，将/etc/apt/sources.list下的内容备份后，新建sources.list文件    
- vi /etc/apt/sources.list，内容输入git库中sources.list.client中的内容，
并修改其中IP为容器服务器的IP