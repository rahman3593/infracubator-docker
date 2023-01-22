pipeline{
    agent any
    stages {
        stage('Docker Build'){
            steps{
                dir("${env.WORKSPACE}/docker_assignment/assignment2") {
                    sh 'docker build . -t rahman3593/infracubator:assignment2-version$BUILD_NUMBER'
                }
            }
        }
    stage('Docker Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerPassword', usernameVariable: 'dockerUser')]) {
                  sh "docker login -u ${env.dockerUser} -p ${env.dockerPassword}"
                  sh 'docker push rahman3593/infracubator:assignment2-version$BUILD_NUMBER'
                }
            }
        }
    }
}
