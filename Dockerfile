FROM leszko/jenkins-docker-slave

RUN apt-get update
RUN apt-get install maven

EXPOSE 8080
