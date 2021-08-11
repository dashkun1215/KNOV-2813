ARG TOMCAT_IMAGE_URI=tomcat
FROM $TOMCAT_IMAGE_URI:9.0.44-jdk8-corretto
ARG IMAGE_TAG

LABEL maintainer="OpenExchange <support@openexc.com>"
ARG JAR_FILE=./src.jar

# Get rid of other apps that exist in the base tomcat image.
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ${JAR_FILE} /usr/local/tomcat/webapps/src.jar