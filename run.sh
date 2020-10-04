docker ps -a
# 停止容器
docker stop springboot_jenkins_8989
# 删除容器
docker rm -f springboot_jenkins_8989
# 创建容器
docker run -d --name springboot_jenkins_8989 -p 8989:8989 baikunlong.top/springboot_jenkins:1.0
# 查看docker进程
docker ps -a