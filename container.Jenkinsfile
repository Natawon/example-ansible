pipeline {

    agent {
        dockerfile {

            filename 'Dockerfile'

        }
    }

    stages {

        stage ('echo'){
            steps {
                ansiColor('xterm') {
                    ansiblePlaybook( 

                        playbook: './playbook.yaml',
                        inventory: './hosts', 
                        credentialsId: 'sample-ssh-key',
                        colorized: true,

                    ) 
                }
            }
        }
        
    }    

}