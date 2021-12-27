pipeline {

    agent {
        docker {
            image 'ansible/ansible'
        }
    }

    stages {

        stage ('echo'){

            ansiColor('xterm') {
                ansiblePlaybook( 
                    playbook: './playbook.yaml',
                    inventory: './hosts', 
                    credentialsId: 'sample-ssh-key',
                    colorized: true
                ) 
            }

        }

    }    

}