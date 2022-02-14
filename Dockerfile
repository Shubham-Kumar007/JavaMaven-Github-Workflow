FROM openjdk:8
ADD /home/runner/work/java-maven-repo/java-maven-repo/target/maven-tomcat.jar maven-tomcat.jar
EXPOSE 8080
CMD ["java", "-jar","maven-tomcat.jar"]
