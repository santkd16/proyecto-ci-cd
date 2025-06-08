FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && apt-get install -y docker.io

RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# --> Agrega el usuario 'jenkins' al grupo 'docker'
RUN usermod -aG docker jenkins

USER jenkins