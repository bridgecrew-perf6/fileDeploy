#!/bin/bash
curl -sSf -u admin:eyJ2ZXIiOiIyIiwidHlwIjoiSldUIiwiYWxnIjoiUlMyNTYiLCJraWQiOiJHdWpCZkVHZXhQVk81aXZOd3NUZ0VpT21lLWlsNE1sWXFZU2Vkd1VwT05ZIn0.eyJzdWIiOiJqZmZlQDAwMFwvdXNlcnNcL2FkbWluIiwic2NwIjoiYXBwbGllZC1wZXJtaXNzaW9uc1wvYWRtaW4gYXBpOioiLCJhdWQiOlsiamZydEAqIiwiamZtZEAqIiwiamZldnRAKiJdLCJpc3MiOiJqZmZlQDAwMCIsImlhdCI6MTYwNzAyMzkzNSwianRpIjoiNDAxNTcwMmMtOTI0OS00OTJmLWE4NTItNGZkNjM1YWM4NDRkIn0.AAhZOQe1ZTSXHq0kXHU_l85-8jgJ77wl7eqy3xA0CbMYF4AP_F0kW86msUGDJrfuON78IUNm3LG9GSeVcdykM_VYGysFAXlY_8FJ1HTrG1ztaAJjRPQgB5obxJlPckZENNvxrSgJDOuUJANuv7-jxEMlzwE8vzAFbjhx_YMaSB92QNykgnKce8vpAjsGoXVcafFxDB-UkUjJBtnhsdh2Lt1wvz9JF5uNqYOgKNtRGotUJSMEeQ_Thce6ZwsZ3ztaz8m__5SLgQwONofjlfDmB08Dzi1saEPVM06Uqgeupe2e40nx1pxw4BQTUpByNqJR8GDdzi5jV-P6XGJ5hcGGFQ -O 'http://artifactory.eurustechnologies.info/artifactory/docker-maven/my-app-1.0-SNAPSHOT.{BuildNumber}.jar'
cd /usr/bin
sudo systemctl restart httpd
