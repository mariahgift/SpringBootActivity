#FROM openjdk:19
#WORKDIR /app
#COPY . /app
#ENTRYPOINT ["java", "-jar", "target/spring-boot-activity-docker.jar"]


FROM openjdk:19
ADD target/spring-boot-activity-docker.jar spring-boot-activity-docker.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "spring-boot-activity-docker.jar"]

