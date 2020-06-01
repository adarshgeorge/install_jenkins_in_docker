#!/bin/bash

####################################################
# Installing Docker Engine
####################################################

yum install docker -y
usermod -a -G docker ec2-user 
chkconfig docker on
service docker restart

####################################################
# Creating Docker Volumes For Jenkins 
####################################################

docker volume create jenkins_home


####################################################
# Pulling Jenkins Docker Image
####################################################
docker run -d \
--name jenkins \
-v jenkins_home:/var/jenkins_home \
-p 8080:8080  \
-p 50000:50000 \
jenkins/jenkins:lts


####################################################
# Wait For Jenkins To Come Online
####################################################

sleep  40

####################################################
# Jenkins Initial Login Token
####################################################

docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword > /home/ec2-user/jenkins-token.txt