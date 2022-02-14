FROM openjdk:8
ADD target/maven-tomcat.jar maven-tomcat.jar
EXPOSE 8080
CMD ["java", "-jar","maven-tomcat.jar"]
