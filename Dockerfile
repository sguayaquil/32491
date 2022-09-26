FROM eclipse-temurin:17.0.4.1_1-jre-alpine
ARG BUILD_ID

LABEL build=${BUILD_ID}
EXPOSE 8080

COPY target/app.jar app.jar
ENTRYPOINT ["java", "-jar","/app.jar"]
