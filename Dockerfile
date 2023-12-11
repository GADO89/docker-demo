#FROM maven:3.8-openjdk-17 AS build
#ARG JAR_FILE=target/*.jar
#COPY . /docker-demo
#EXPOSE 8080
#COPY ./target/docker-demo-0.0.1-SNAPSHOT.jar docker-demo.jar
#COPY ./target/docker-demo-0.0.1-SNAPSHOT.jar /docker-demo/docker-demo.jar
#ENTRYPOINT ["java","-jar","/docker-demo/docker-demo.jar"]





#####################################################################################################
FROM openjdk:17-alpine as base
FROM base as development
COPY . /docker-demo
#EXPOSE 8080
ENTRYPOINT ["java","-jar","/docker-demo/target/docker-demo-0.0.1-SNAPSHOT.jar"]
FROM base as production
COPY ./target/docker-demo-0.0.1-SNAPSHOT.jar /docker-demo/docker-demo.jar
ENTRYPOINT ["java","-jar","/docker-demo/docker-demo.jar"]
