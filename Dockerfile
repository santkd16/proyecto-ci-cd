FROM jenkins/jenkins:lts-jdk11

USER root

# Instala Docker dentro del contenedor Jenkins
RUN apt-get update && apt-get install -y docker.io

# Instala docker-compose versión 1.x (común en muchos tutoriales)
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

USER jenkins