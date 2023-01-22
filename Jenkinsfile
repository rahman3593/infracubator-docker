pipeline{
    agent any
    stages {
        stage('Docker Build'){
            steps{
                sh 'docker build . -t rahman3593/infracubator:assignment2-version$BUILD_NUMBER -f ./docker_assignment/assignment2/Dockerfile'
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
