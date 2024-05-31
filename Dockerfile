FROM openjdk:17
ARG JAR_FILE=build/libs/SpringBootNCPGradle-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
COPY src/main/front/build /tmp/build
ENTRYPOINT ["java","-jar","app.jar"]