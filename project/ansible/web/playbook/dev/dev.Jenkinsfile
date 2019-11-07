pipeline {
    agent {
        docker {
            image 'ansible:2.7.5'
        }
    }
    parameters {
        string(name: 'GIT_BRANCH',
            description: 'Provide the git branch for code checkout',
            defaultValue: 'master') 
        
        string(name: 'HOSTS',
            description: 'Ex: Private/Public IPs/ tag_Name_tagValue/ InstanceID / Role. Comma separated for multiple value',
            defaultValue: '')

    }

    stages {
        stage('checkout') {
            steps {
                git branch: '${GIT_BRANCH}', url: 'https://github.com/abhinavnarra/ansible.git'
            }
        }
        stage('Deploy INmail webserver with ansible playbook') {
            steps {
                     {
                        sh '''
                        export ANSIBLE_INVENTORY=./inventory &&
                        export ENVIRONMENT=dev && 
                        cd ansible/web/playbook/dev &&
                        ansible-playbook -e variable_host=${HOSTS} dev.yml  -vvv
                        '''
                    }
            }
        }
    }
    
    post {
     always {     
      script {
          cleanWs deleteDirs: true
        } //script
     } //always
              
    } // post
}