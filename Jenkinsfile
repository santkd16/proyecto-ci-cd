pipeline {
    agent any
    stages {
        stage('Clonar servicios') {
            steps {
                dir('servicio1') {
                    git url: 'https://github.com/santkd16/servicio1.git', branch: 'main'
                }
                dir('servicio2') {
                    git url: 'https://github.com/santkd16/servicio2.git', branch: 'main'
                }
            }
        }
        stage('Build y Deploy') {
            steps {
                sh 'docker-compose build'
                sh 'docker-compose up -d'
            }
        }
    }
}