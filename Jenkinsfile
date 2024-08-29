pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Aishwaran/terraformrepo']])
            }
        }
        
        stage('init') {
            steps {
                sh("terraform init")
            }
        }
        
        stage('plan') {
            steps {
                sh("terraform plan")
            }
        }
        
         stage('action') {
            steps {
                sh("terraform ${action} --auto-approve")
            }
         }
    }
}
