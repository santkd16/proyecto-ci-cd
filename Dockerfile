FROM jenkins/jenkins:lts-jdk11

USER root

# Instala Git y Docker Engine
RUN apt-get update && \
    apt-get install -y git docker.io && \
    apt-get clean

# Instala Docker Compose v1
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" \
    -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Agrega el usuario Jenkins al grupo Docker para permitir acceso al socket
RUN usermod -aG docker jenkins

# Cambia de nuevo al usuario Jenkins
USER jenkins
