pipeline {
	agent any
    stages {
        stage('Build') { 
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        stage('Build Docker Image'){
        	steps{
        		sh 'docker build . -t datastructureimage/datastructre:v11'
        	}
        }
    }
}