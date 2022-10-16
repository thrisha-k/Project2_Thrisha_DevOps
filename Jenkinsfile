pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS=credentials('DockerHubAccount')
  }
  stages {
    stage('Build') {
      steps {
	sh 'docker build -t thrisha123/project2image:v1 .'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker run -it -d --name con_v1 thrisha123/project2image:v1'
      }
    }
    stage('Login') {
      steps {
        sh 'docker login -u $DOCKERHUB_CREDENTIALS_USR -p $DOCKERHUB_CREDENTIALS_PSW'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push thrisha123/project2image:v1'
      }
    }    
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
