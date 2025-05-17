FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17-jdk-slim

WORKDIR /app

COPY --from=build /app/target/cms-0.0.1-SNAPSHOT.jar app.jar
COPY pom.xml .
COPY src ./src
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
