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
    
    stage('build-docker') {
      steps {
        sh 'docker image build -t app:0.1 .'
      }
    }

  }

  post {
        always {
            archiveArtifacts artifacts: 'hello.Rcheck/tests/junit_result.xml', fingerprint: true
            junit 'hello.Rcheck/tests/junit_result.xml'
        }
  }
}
