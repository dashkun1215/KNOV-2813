FROM openjdk:11
COPY . /usr/KNOV-2813
WORKDIR /usr/KNOV-2813/app
RUN javac App.java
CMD ["java","App"]
