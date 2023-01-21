pipeline{
    agent any
    stages {
        stage('Docker Build'){
            steps{
                sh 'pwd'
                sh 'cd /assignment2'
                sh 'docker build -t rahman3593/infracubator:assignment2-version$""BUILD_ID""'
            }
        }
    stage('Docker Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerPassword', usernameVariable: 'dockerUser')]) {
                  sh "docker login -u ${env.dockerUser} -p ${env.dockerPassword}"
                  sh 'docker push rahman3593/infracubator:assignment2-version$""BUILD_ID""'
                }
            }
        }
    }
}
