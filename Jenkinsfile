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

    stage('check') {
      steps {
        sh 'R CMD check *tar.gz'
      }
    }

  }
}