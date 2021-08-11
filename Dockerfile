FROM openjdk:8
COPY ./src/ /tmp
WORKDIR /tmp
ENTRYPOINT ["java","App"]
