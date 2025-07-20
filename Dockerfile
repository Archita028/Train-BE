FROM openjdk:21
WORKDIR /app

# Correct: copy the JAR and rename it to app.jar
COPY target/Train-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

# Correct: run the correct file name
CMD ["java", "-jar", "app.jar"]
