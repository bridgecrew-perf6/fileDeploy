#!/bin/bash
set +x
echo -n "Enter a name: "
if [[ {APPLICATION} -eq 'frontend' ]]
then
  curl -sSf -u admin:{Token} -O 'http://artifactory.eurustechnologies.info/artifactory/docker-maven/my-app-1.0-SNAPSHOT.{BuildNumber}.jar'
elif [[ {APPLICATION} -eq 'backend' ]]
then
  curl -sSf -u admin:{Token} -O 'http://artifactory.eurustechnologies.info/artifactory/docker-maven/my-app-1.0-SNAPSHOT.11.jar'
else
  echo "no argument passed"
fi

sudo cp java-webapp.service /etc/systemd/system/
sudo systemctl restart httpd
sudo systemctl daemon-reload

