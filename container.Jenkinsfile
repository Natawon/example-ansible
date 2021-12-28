pipeline {

    agent {
        dockerfile {

            filename 'Dockerfile'
            args '-u 0'

        }
    }

    stages {

        stage ('echo'){

            steps {

                ansiColor('xterm') {

                    //sh 'whoami'
                    sh 'pwd'

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