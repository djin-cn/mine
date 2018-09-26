#Springboot基础镜像
#如果需要添加ssh支持，可按以下步骤添加--
#apk add --update openssh
#rm -rf /tmp/* /var/cache/apk/*
#rm -rf /etc/ssh/ssh_host_rsa_key /etc/ssh/ssh_host_dsa_key
#ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
#ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa
#/usr/sbin/sshd
FROM java:8-alpine
MAINTAINER djin

COPY cmd /root/cmd
COPY localtime /etc/localtime
RUN chmod +x /root/cmd \
&& ln -sf /root/cmd /usr/local/bin/cmd
#如果需要添加其他启动参数，可参考以下两条命令添加。
#sed -i '/2>&1/a\--server.servlet\.contextPath=\/context \\' /root/cmd
#sed -i '/\/root\/\*\.jar>\/root\/run\.log 2>&1/i\--server.servlet\.contextPath=\/context \\' /root/cmd
#/a\表示在匹配行后添加命令行；/i\表示在匹配行前添加命令行

ONBUILD COPY target/*.jar /root/
ENTRYPOINT ["cmd"]
CMD ["sh"]
