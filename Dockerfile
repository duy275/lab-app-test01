FROM eclipse-temurin:21-jre
WORKDIR /app
COPY target/*.jar app.jar
RUN useradd -r -u 10001 app
USER 10001
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]