pipeline {
    agent any
    tools {
        maven "maven"
    }
    stages {
        stage('Build') {
            steps { 
                git branch:"PSBA-104-toc-week-1-day-2-maven-docker-nfrs-lakshay-|-docker-jenkins-" , url: "https://tools.publicis.sapient.com/bitbucket/scm/psba/training.git"

                // Run Maven on a Unix agent.
                sh "mvn -Dmaven.test.failure.ignore=true clean install"

            }
        }
        stage('Containerize'){
            steps{
                sh "docker build -t helloWorldApp ."
            }
        }
        stage('Run Image'){
            steps {
                sh "docker run helloWorldApp"
            }
            
        }
    }
}