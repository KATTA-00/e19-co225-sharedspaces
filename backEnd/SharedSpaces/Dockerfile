FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/*.jar sharedspaces.jar
ENTRYPOINT ["java","-jar","/sharedspaces.jar"]
EXPOSE 8080
