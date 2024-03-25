FROM maven:3.8.6-eclipse-temurin-17 AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src

RUN mvn -B -f pom.xml clean package -DskipTests

FROM openjdk:17-jdk-slim
COPY --from=build /workspace/target/*.jar fino-cars.jar
ENTRYPOINT ["java", "-jar", "fino-cars.jar"]
EXPOSE 8080
