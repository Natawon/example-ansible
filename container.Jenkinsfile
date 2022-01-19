pipeline {

    agent {
        dockerfile {

            filename 'Dockerfile'
            //args '-u 0'

        }
    }

    stages {

        stage ('debug'){

            steps {

                sh 'pwd'
                sh 'ls -l'
                //sh 'whoami'

            }

        }

        stage ('echo'){

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