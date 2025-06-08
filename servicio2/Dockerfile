FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt-get update && apt-get install -y docker.io
USER jenkins



FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "app.py"]

