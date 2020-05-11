FROM jenkins/jenkins:lts

USER root
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN apt-get update && apt-get install rsync -y
RUN apt-get clean

USER jenkins

EXPOSE 8080
