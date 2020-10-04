docker ps -a

docker stop springboot_jenkins_8989
docker rm -f springboot_jenkins_8989
docker run -d --name springboot_jenkins_8989 -p 8989:8989 baikunlong.top/springboot_jenkins:1.0

docker ps -a