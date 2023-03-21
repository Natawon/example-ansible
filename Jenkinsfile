pipeline {

    agent {
        
        label 'ansible'

    }

    stages {

        stage ('Build'){
            steps {
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

}