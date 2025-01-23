pipeline {
    agent any
    stages{
        stage("Git check out scm"){
            steps{
                script{
                    git branch: 'main', url: 'https://github.com/ajayneymar35/task-1.git'
                }
            }
        }
        stage("Docker build & push"){
            steps{
                script{
                    sh 'docker build -t task1 .'
                    sh "docker tag task1 ajayneymar5/flm-task"
                    sh 'docker run -d --name task1 -p 1504:80 ajayneymar5/flm-task'
                }
            }
        }
    }
}