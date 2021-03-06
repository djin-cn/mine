# BaseDockerfile/Dockerfile.nginx
nginx基础镜像，可作为静态资源的基础镜像。  
需要将源目录复制/移动到target目录下，且target目录必须与Dockerfile位于同级目录，Dockerfile示例
FROM a273218159/nginx:0

# BaseDockerfile/springboot/Dockerfile
springboot基础镜像。  
需要将jar包复制/移动到target目录下，且target目录必须与Dockerfile位于同级目录，Dockerfile示例
FROM a273218159/springboot:0
运行方式：docker run -d -t -e version={server} --name {name} {mirror}

# DevOps/docker-compose.yml
构建一个全流程的完整的开发环境

# DevOps/dockerInstall.sh
此脚本用来安装Docker-ce和docker-compose，使用方式  
curl https://raw.githubusercontent.com/djin-cn/mine/master/DevOps/dockerInstall.sh | sh -s {docker path}  
{docker path}表示docker容器和镜像的根目录

# DevOps/sdl.sh  
此脚本用来全量备份/恢复svn库，可用户svn迁移，使用方式  
1:备份 ./sdl.sh back [svn库根目录]  
2:还原 ./sdl.sh restore [svn备份目录] [svn库根目录]

# jmeter.sh
此脚本用来安装Jmeter, 使用前需确保系统已安装jdk/curl/tar命令, 使用方式
./jmeter.sh {file}.jmx
