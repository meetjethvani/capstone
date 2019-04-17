pipeline {
    agent any
    stages {
        stage('Current build supported:') {
            steps {
                echo "Current Build version no. ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
        }
        stage('Email Notification:') {
          mail bcc: '', body: '''Jenkins Alerts''', cc: '', from: '', replyTo: '', subject: 'Jenkins Job', to: 'mmj25294@gmail.com'  
        }    
        stage('Build Docker Image:'){
           sh 'ssh root@webserver'
           sh 'docker build -t mmj25294/capstone:latest .'
        } 
    }
}
