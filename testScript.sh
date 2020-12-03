#!/bin/bash
curl -sSf -u admin:{Token} -O 'http://artifactory.eurustechnologies.info/artifactory/docker-maven/my-app-1.0-SNAPSHOT.{BuildNumber}.jar'
sudo cp my-app-1.0-SNAPSHOT.{BuildNumber}.jar /var/www/html
cd  /var/www/html
sudo rm index.html
nohup java -jar my-app-1.0-SNAPSHOT.{BuildNumber}.jar > index.html 2>&1 &
sudo systemctl restart httpd
