# First Stage: Build the Spring Boot JAR using Maven
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Second Stage: Run the app using JAR
FROM openjdk:21
WORKDIR /app
COPY --from=build /app/target/Train-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
