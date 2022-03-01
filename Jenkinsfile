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
                   git clone https://github.com/sravan-github/k8stest.git
                   ls -l
                   whoami
                   pwd
                   cd
                   pwd
                   mkdir .kube
                   cp -rf /var/lib/jenkins/workspace/test-job/config .kube/
                   cp -rf /var/lib/jenkins/workspace/test-job/nginx.yml /root
                   kubectl get nodes
                   kubectl apply -f nginx.yml
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
