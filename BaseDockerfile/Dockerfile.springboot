#Springboot基础镜像
FROM java:8-alpine
MAINTAINER djin

COPY cmd /root/cmd
COPY localtime /etc/localtime
RUN chmod +x /root/cmd \
&& ln -sf /root/cmd /usr/local/bin/cmd

ONBUILD COPY target/*.jar /root/
ENTRYPOINT ["cmd"]
CMD ["sh"]
