#FROM openjdk:11-jdk-alpine
#ENV PORT 8080
#EXPOSE 8080
#COPY target/*.jar /opt/app.jar
#WORKDIR /opt
#CMD ["java", "-jar", "app.jar"]
#FROM openjdk:8-jdk-alpine
#ARG JAR_FILE=build/libs/*.jar
#COPY ${JAR_FILE} app.jar

#RUN mkdir destination-dir-for-add
#ADD sample.tar.gz /destination-dir-for-add

#ENTRYPOINT ["java","-jar","/app.jar"]
FROM openjdk
COPY target/rah*.jar target/rah1.jar
#COPY /var/lib/jenkins/workspace/rahjava7/target/rah*.jar   rah1.jar
#RUN cp -a /var/lib/jenkins/workspace/rahjava7/target/rah*.jar target/rah1.jar
ENTRYPOINT ["java","-jar","/rah1.jar"]
EXPOSE 80
