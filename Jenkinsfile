pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    docker.build('count-files-image')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    // Run the Docker container and capture the output
                    def output = sh(script: "docker run --rm count-files-image", returnStdout: true).trim()
                    echo "Output from script: ${output}"
                }
            }
        }
    }
}

