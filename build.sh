# 打包项目
mvn package -DskipTests
# 先删除上次创建的
docker rmi -f baikunlong.top/springboot_jenkins:1.0
# 创建镜像，最后个.是指使用当前目录下文件(dockerfile)
docker build -t baikunlong.top/springboot_jenkins:1.0 .
# 查看当前有哪些镜像
docker images