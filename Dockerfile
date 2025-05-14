# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk-slim
# -------- Stage 1: Build --------
FROM maven:3.9.4-eclipse-temurin-17 AS build
# Set the working directory inside the container
WORKDIR /app
# Copy only necessary files to avoid cache busting
COPY pom.xml .
COPY src ./src

# Copy the compiled JAR file into the container
COPY target/cms-0.0.1-SNAPSHOT.jar cms.jar

# Expose port 8080 (or the port your app uses)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "cms.jar"]