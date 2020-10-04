#基于jdk8镜像进行构建，创建的镜像已经配置好java环境
FROM openjdk:8-jdk-alpine
#配置个变量记录jar的名称，方便修改
ARG JAR_FILE=springboot_jenkins-0.0.1-SNAPSHOT.jar
#在镜像中创建一个工作目录
run mkdir /springboot_worker
#将jar文件复制到工作目录中
add /target/${JAR_FILE} /springboot_worker
#暴露镜像的端口8989，其他端口不开放
expose 8989
#启动项目: java -jar /worker/web-1.0.jar
#CMD java -jar /springboot_worker/${JAR_FILE}
CMD ["java","-jar","/springboot_worker/springboot_jenkins-0.0.1-SNAPSHOT.jar"]