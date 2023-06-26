FROM openjdk:18-jdk-slim
COPY --from=build target/mocker-back-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
