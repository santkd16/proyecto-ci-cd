pipeline {
    agent any
    stages {
        stage('Clonar servicio1') {
            steps {
                sh 'git clone https://github.com/santkd16/servicio1.git'
            }
        }
        stage('Clonar servicio2') {
            steps {
                sh 'git clone https://github.com/santkd16/servicio2.git'
            }
        }
        stage('Build') {
            steps {
                sh 'docker-compose build'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}
