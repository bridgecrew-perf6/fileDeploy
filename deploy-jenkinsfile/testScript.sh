#!/bin/bash
set +x
APPLIACTION={APPLICATION_NAME}
echo "$APPLIACTION"
if [[ $APPLICATION = frontend ]]
then
  echo "frontend is downloading"
  curl -sSf -u admin:{Token} -O 'http://artifactory.eurustechnologies.info/artifactory/docker-maven/my-app-1.0-SNAPSHOT.{BuildNumber}.jar'
elif [[ $APPLICATION = backend ]]
then
  echo "backend is downloading"
  curl -sSf -u admin:{Token} -O 'http://artifactory.eurustechnologies.info/artifactory/docker-maven/my-app-1.0-SNAPSHOT.11.jar'
else
  echo "no argument passed"
fi

# sudo cp java-webapp.service /etc/systemd/system/
# sudo systemctl restart httpd
# sudo systemctl daemon-reload

