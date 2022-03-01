pipeline {
    agent {
    docker { 
            image 'sravangcpdocker/toolkit-test:5.0'
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
                   pwd
                   cd
                   pwd
                   mkdir .kube
                   cp -rf /var/lib/jenkins/workspace/test-job/config .kube/
                   kubectl get nodes
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
