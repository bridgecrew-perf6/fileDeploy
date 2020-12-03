#!/bin/bash
curl -sSf -u admin:{Token} -O 'http://artifactory.eurustechnologies.info/artifactory/docker-maven/my-app-1.0-SNAPSHOT.{BuildNumber}.jar'
cd /usr/bin
ls -la
sudo systemctl restart httpd
