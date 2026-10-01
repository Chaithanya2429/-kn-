pipeline{
    agent any

    environment{
        DOCKER_IMAGE ="chaithanya2429/doc"
    }
    stages{
        stages('Clone Repository'){
            steps{
                git 'https://github.com/chaithanya2429/https://https://github.com/Chaithanya2429/-kn-.git'
            }
        }
        stage('Build DOcker Image'){
            steps{
                script{
                    docker.build("${DOCKER_IMAGE}latest")
                }

            }
        }
        stage('Login to Docker hub'){
            steps{
                withCredentials([usernamePassword(
                    credentialId :'dockerhub-creds',
                    usernamevarible: 'DOCKER_USER'
                    passwordvariable: 'DOCKER_PASS'
                )]){
                    bat echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('', 'dockerhub_creds') {
                        docker.image("${DOCKER_IMAGE}:latest").push('latest')
                    }
                }
            }
            stage('Push Docker Image') {
steps {
script {
docker.	WithRegistry('','dockerhub-creds') {
docker.image("${DOCKER_IMAGE}:v1").push()
}
}
}
}
}

post {
success {
echo 'Image successfully built and pushed to Docker hub'
}
failure {
echo 'Pipeline failed'

        }
                }
            }
    