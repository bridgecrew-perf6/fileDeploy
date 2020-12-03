#!/bin/bash
set +x
curl -sSf -u admin:{Token} -O 'http://artifactory.eurustechnologies.info/artifactory/docker-maven/my-app-1.0-SNAPSHOT.{BuildNumber}.jar'
#sudo cp my-app-1.0-SNAPSHOT.{BuildNumber}.jar /var/www/html
#sudo chmod 777 /var/www/html
#cd  /var/www/html
#sudo rm index.html
#nohup java -jar my-app-1.0-SNAPSHOT.{BuildNumber}.jar > index.html 2>&1 &
sudo cp java-webapp.service /etc/systemd/system/
sudo systemctl restart httpd
sudo systemctl daemon-reload

