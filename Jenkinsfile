pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Copiando los ficheros'
                bash 'npm install'
                
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
