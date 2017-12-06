FROM leszko/jenkins-docker-slave

RUN sudo apt-get update
RUN sudo apt-get install -y maven
RUN mkdir /var/jenkins
RUN chmod -R 777 /var/jenkins
