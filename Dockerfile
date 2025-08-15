FROM openjdk:latest
ADD target/student-app.jar student-app.jar
ENTRYPOINT ["java", "-jar", "/target/student-app.jar"]