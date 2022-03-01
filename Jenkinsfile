pipeline {
    agent any 
    stages {
        stage('shell') {
            steps {
                sh '''
                   #!/bin/bash  
                   git clone https://github.com/sravan-github/k8stest.git
                   sudo su
                   whoami
                   '''
            }
        }       
  }

   post {
        always {
            cleanWs deleteDirs: true
        }
     }

}
