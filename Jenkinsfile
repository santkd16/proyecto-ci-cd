pipeline {
    agent any
    stages {
        stage('Clonar Repositorios') {
            steps {
                // Clona servicio1
                git branch: 'main', url: 'https://github.com/<org>/servicio1-repo.git', changelog: false, poll: false
                sh 'mv . ../servicio1'
                // Clona servicio2
                dir('..') {
                    git branch: 'main', url: 'https://github.com/<org>/servicio2-repo.git', changelog: false, poll: false
                    sh 'mv . ../servicio2'
                }
            }
        }
        stage('Copiar docker-compose') {
            steps {
                // Copia el docker-compose.yml del repo de infraestructura al workspace raíz
                sh 'cp docker-compose.yml ../'
            }
        }
        stage('Build y Deploy') {
            steps {
                dir('..') {
                    sh 'docker-compose build'
                    sh 'docker-compose up -d'
                }
            }
        }
    }
}