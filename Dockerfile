FROM frolvlad/alpine-oraclejdk8:slim
COPY build/libs/example-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]

FROM leszko/jenkins-docker-slave

RUN apt-get update
RUN apt-get install maven

RUN mkdir /var/jenkins
RUN chmod -R 777 /var/jenkins

09-es slave kell majd
builddel és dockerfile a compose mellé
