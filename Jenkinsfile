pipeline {
    agent {
    docker { 
            image 'sravangcpdocker/ansible-gcp:1'
            args '-u root:root'
          }
        }
    stages {
        stage('shell') {
            steps {
                sh '''
                   #!/bin/bash  
                   git clone https://github.com/sravan-github/k8stest.git
                   ls -l
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
