pipeline {
    agent any

    stages {
        stage('build and deploy') {
            steps {
                // Check out the code from your version control system (e.g., Git)
               sh 'chmod +x deploy.sh'
               sh './deploy.sh'
            }
        }
      }
     }  
