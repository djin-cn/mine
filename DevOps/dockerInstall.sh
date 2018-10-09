#!/bin/bash
#用于CentOS7+
kenel=`uname -r`
kenel=`echo ${kenel:0:3}`
if [ $(echo "${kenel} >= 3.10" | bc) = 1 ];then
  #echo '安装docker'
  #sudo yum install -y yum-utils
  #sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
  #sudo yum makecache fast
  #sudo yum -y install docker-ce
  #sudo systemctl start docker
  #sudo systemctl enable docker
  #echo "{\"data-root\":\"$1\"}">/etc/docker/daemon.json
  echo "{\"data-root\":\"$1\"}"
  #curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
  #chmod +x /usr/local/bin/docker-compose
  #docker-compose --version
else
  echo "内核版本太低，请您升级内核版本"
fi
