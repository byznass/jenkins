FROM jenkins/jenkins

USER root
COPY install_docker.sh /byznass/
RUN /byznass/install_docker.sh
USER jenkins
