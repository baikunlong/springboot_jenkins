# 打包项目这个在构建配置那边配置了调用顶层Maven目标就不用再写了，不然就打包两次了（虽然不会错）
# mvn package -DskipTests
# 先删除上次创建的
docker rmi -f baikunlong.top/springboot_jenkins:1.0
# 创建镜像，最后个.是指使用当前目录下文件(dockerfile)
docker build -t baikunlong.top/springboot_jenkins:1.0 .
# 查看当前有哪些镜像
docker images