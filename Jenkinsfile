pipeline {
    agent {
    docker { 
            image 'sravangcpdocker/kubectl-image:1.0'
            args '-u root:root'
          }
        }
    stages {
        stage('shell') {
            steps {
                sh '''
                   #!/bin/bash  
                   cd
                   git clone https://github.com/sravan-github/k8stest.git
                   ls -l
                   whoami
                   pwd
                   mkdir .kube
                   cp -rf config .kube/
                   cp -rf nginx.yml /root
                   ls -l
                   #kubectl get nodes
                   #kubectl apply -f nginx.yml
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
