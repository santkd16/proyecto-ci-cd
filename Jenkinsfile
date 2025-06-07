pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'docker-compose down && docker-compose up -d'
            }
        }
        stage('Deploy') {
            steps {
                bat 'docker-compose down && docker-compose up -d'
            }
        }
    }
}
