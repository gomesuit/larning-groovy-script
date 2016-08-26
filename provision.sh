#!/bin/sh

yum install -y unzip

curl -s get.sdkman.io | bash

yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel

source "/root/.sdkman/bin/sdkman-init.sh"

sdk install groovy

groovy -version

echo 'println "hello, world"' > hello.groovy
groovy hello.groovy
