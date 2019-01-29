#!/bin/bash

echo "deploy-tomcat"

docker pull harbor.mxnet.io/library/tomcat
docker run -d -p 8080:8080 -v $PWD/data:/usr/local/tomcat/webapps --name tomcat harbor.mxnet.io/library/tomcat
