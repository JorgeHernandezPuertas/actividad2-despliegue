pipeline {
    agent{
        docker {
            image 'node:latest' //Utiliza la imagen oficial de node.js
            args '-p 3000:3000' //opcional: mapea los puertos si es necesario
        }
    }
    stages {
        stage('Build') {
            steps {
                echo 'Copiando los ficheros'
                sh 'npm install'
                
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
