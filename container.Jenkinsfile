pipeline {

    agent {
        dockerfile {

            filename 'Dockerfile'
            //args '-u 0'

        }
    }

    stages {

        stage ('echo'){

            steps {

                sh 'pwd'
                sh 'ls -l'
                //sh 'whoami'

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