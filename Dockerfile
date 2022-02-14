FROM openjdk:8
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} maven-tomcat.jar
EXPOSE 8080
#CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
#COPY /target/maven-tomcat.jar maven-tomcat.jar
CMD ["java", "-jar","/maven-tomcat.jar"]
