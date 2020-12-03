#!/bin/bash
curl -sSf -u admin:{Token} -O 'http://artifactory.eurustechnologies.info/artifactory/docker-eurus/spring-boot-hello-world-1.0.0-SNAPSHOT.{BuildNumber}.jar'
cd /usr/bin
ls -la
sudo systemctl restart httpd
