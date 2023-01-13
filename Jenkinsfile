properties([parameters([choice(choices: ['us-east-1', 'us-east-2', 'us-west-1', 'us-west-2'], description: 'regions', name: 'region')])])
pipeline{
    agent any 
    stages{
        stage('chkout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git-yomipounds', url: 'https://github.com/YomiPounds/terraform-parameterized-jenkins.git']]])
            }
            
        }
        stage('terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('terraform plan'){
            steps{
                sh "terraform plan -var 'region=${params.region}' -auto-approve"
            }
        }
        stage('terraf apply'){
            steps{
                sh "terraform apply -var 'region=${params.region}' -auto-approve -auto-approve"
            }
        }
    }
}
