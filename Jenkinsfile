pipeline {
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 1, unit: 'HOURS')
    }
    stages {
        stage('Checking to gitHub') {
            steps {
                git branch: 'main', url: 'https://github.com/582Bamfo/iac-dev.git'
            }
        }

        stage('Initialiasation') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Planning') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Deployement') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }

        stage('Destory') {
            when { 
                expression { return params.DESTROY == 'true' }
            }
            steps {
                script { 
                    input message: 'Are you sure you want to destroy the infrastructure?', ok: 'Yes, Destroy'
                    echo 'Running terraform destroy...'
                    sh 'terraform destroy -auto-approve'
                }
                
            }
        }
    }
}