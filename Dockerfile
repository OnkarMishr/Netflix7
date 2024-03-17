FROM ubuntu

MAINTAINER onkarcode@gmail.com

RUN apt-get update && apt-get install -y git

WORKDIR warfiles

COPY target/Netflix7.war warfiles
