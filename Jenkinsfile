pipeline {
    agent { label 'linux' }
    stages {
        stage('download from github') {
            steps {
                echo "Starting to download on linux agent"
                git branch: 'main', url: 'https://github.com/T1kcan/Jenkins_Samples.git'
                sh '''
                echo 'downloaded'
                echo 'running multiline shell command in jenkins'
                '''
            }
        }
        stage('building docker image') {
            steps {
                echo "building image"
                sh 'docker build -t tbincan/jenkins_sample:1.0 .'
                sh 'echo building finished successfully'
                sh 'sleep 30'
                sh '''
                echo 'working on'
                echo 'slave node'
                '''
            }
        }
        stage('pushing docker image to  docker registry') {
            steps {
                echo "pushing image"
                sh 'docker login -u tbincan -p Aa123456-'
                sh 'docker push tbincan/jenkins_sample:1.0'
                sh 'echo pushing to docker registry finished successfully'
                sh 'sleep 30'
                sh '''
                echo 'working on'
                echo 'slave node'
                '''
            }
        }
    }
}
