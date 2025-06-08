pipeline {
    agent any
    stages {
        stage('Build servicio1') {
            steps {
                dir('servicio1') {
                    sh 'docker build -t <USER>/servicio1:latest .'
                    sh 'docker push <USER>/servicio1:latest'
                }
            }
        }
        stage('Build servicio2') {
            steps {
                dir('servicio2') {
                    sh 'docker build -t <USER>/servicio2:latest .'
                    sh 'docker push <USER>/servicio2:latest'
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose pull'
                sh 'docker-compose up -d'
            }
        }
    }
}