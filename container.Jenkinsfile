pipeline {

    agent {
        dockerfile {

            filename 'Dockerfile'
            //args '-u ansibleuser'

        }
    }

    stages {

        stage ('debug'){

            steps {

                sh 'pwd'
                sh 'ls -l'
                sh 'cat /etc/os-release'
                //sh 'mkdir /.ansible'

            }

        }

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