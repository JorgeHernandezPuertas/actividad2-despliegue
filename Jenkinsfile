pipeline {
    agent any
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
                sh 'npm run build'
                sh 'npm install -g serve'
            }
        }
        stage('Execute'){
            steps{
                echo 'Executing...'
                sh 'serve -s build -l 3000'
            }
        }
    }
}
