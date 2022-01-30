pipeline {

    agent {
        dockerfile {

            filename 'Dockerfile'
            args '--user jenkins'

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