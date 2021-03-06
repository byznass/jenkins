FROM jenkins/jenkins

COPY install_docker.sh install_gcloud.sh /byznass/

USER root
RUN mkdir /.config && chown jenkins /.config
RUN /byznass/install_gcloud.sh
RUN /byznass/install_docker.sh
USER jenkins
