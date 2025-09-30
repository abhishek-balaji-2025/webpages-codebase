pipeline {
    agent {
        label 'jenkins-s1'
    }

    stages {
        stage ("git-checkout") {
            git branch: 'main', url: 'https://github.com/abhishek-balaji-2025/webpages-codebase.git'
        }

        stage ("docker-build-image") {
            sh 'echo "initiating docker build process..."'
            sh 'docker build -t homepage:latest .'
        }

        stage ("run-docker-container") {
            sh 'echo "running docker container from recently built docker image"'
            sh 'docker rm -f homepage || true'
            sh 'docker run -d --name homepage -p 80:80 homepage:latest'
        }
    }
}
