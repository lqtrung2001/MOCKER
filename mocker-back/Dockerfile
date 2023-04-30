#
# Build stage
#
#FROM openjdk:18.0.2-jdk AS build
FROM ubuntu:latest AS build
RUN apt-get update
RUN apt-get install -y maven
RUN apt-get install openjdk-18-jdk -y
COPY . .
#RUN mvn clean package -DskipTests
#RUN ./gradlew bootJar --no-daemon
#
# Package stage
#
FROM openjdk:18-jdk-slim
#FROM eclipse-temurin:17-jdk-alpine
#VOLUME /tmp
#ADD target/mocker-back-0.0.1-SNAPSHOT.jar.jar demo.jar
#COPY --from=build /build/libs/demo.jar app.jar
COPY --from=build target/mocker-back-0.0.1-SNAPSHOT.jar app.jar

# ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
