pipeline {
    agent any
    stages {
        stage('Current build supported') {
            steps {
                echo "Current Build version no. ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
        }   
        stage('Build Docker Image:'){
            steps{
                sh 'hostname'
            }
        } 
    }
}
