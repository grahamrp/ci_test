pipeline {
  agent {
    docker {
      image 'rocker/r-ver'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'R CMD build .'
      }
    }

  }
}