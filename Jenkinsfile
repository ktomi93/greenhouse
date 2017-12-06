pipeline {
    agent any
    stages {
        stage("Maven install") {
            steps {
                sh "sudo apt-get update"
                sh "sudo apt-get install -y maven"
            }
        }
        stage("Checkout") {
            steps {
                git url: "https://github.com/ktomi93/greenhouse.git"
            }
        }
        stage("Packaging") {
            steps {
                sh "mvn clean install"
            }
        }
        stage("Docker build") {
            steps {
                sh "docker build -t ktomi93/greenhouse ."
            }
        }
        stage("Docker login") {
            steps {
                sh "docker login --username ktomi93 --password=$docker_password"
            }
        }
        stage("Docker push") {
            steps {
                sh "docker push ktomi93/greenhouse"
            }
        }
        stage("Deploy to Production") {
            steps {
                sh "ansible-playbook playbook.yml -i inventory/production"
            }
        }
    }
}
