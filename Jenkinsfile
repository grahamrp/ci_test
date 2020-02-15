pipeline {
  agent {
    docker {
      image 'rocker/tidyverse'
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
        sh 'R CMD check --no-manual *tar.gz'
      }
    }

  }
}
