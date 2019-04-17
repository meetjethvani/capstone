pipeline {
    agent any
    stages {
        stage('Current build supported:') {
            steps {
                echo "Current Build version no. ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
        }   
        stage('Build Docker Image:'){
           sh 'ssh root@webserver'
           sh 'docker build -t mmj25294/capstone:latest .'
        } 
    }
}
