pipeline {
  agent {
    docker {
      image 'rocker/tidyverse'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'R CMD build hello'
      }
    }

    stage('check') {
      steps {
        sh 'cd hello'
        sh 'R CMD check --no-manual *tar.gz'
      }
    }

  }
}
