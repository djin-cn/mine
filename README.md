# BaseDockerfile/Dockerfile.nginx
nginx基础镜像，可作为静态资源的基础镜像。  
需要将源目录复制/移动到target目录下，且target目录必须与Dockerfile位于同级目录，Dockerfile示例
FROM a273218159/nginx:0

# DevOps/docker-compose.yml
构建一个全流程的完整的开发环境

# DevOps/sdl.sh  
此脚本用来全量备份/恢复svn库，可用户svn迁移，使用方式  
1:备份 ./sdl.sh back [svn库根目录]  
2:还原 ./sdl.sh restore [svn备份目录] [svn库根目录]
