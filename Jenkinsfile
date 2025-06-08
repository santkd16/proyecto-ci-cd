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
                pat 'docker-compose build'
                pat 'docker-compose up -d'
            }
        }
    }
}