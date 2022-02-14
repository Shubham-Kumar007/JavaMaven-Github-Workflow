FROM openjdk:8
COPY --from=build /target/maven-tomcat.jar maven-tomcat.jar
EXPOSE 8080
CMD ["java", "-jar","maven-tomcat.jar"]
