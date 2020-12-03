pipeline {

    agent {label 'jenkins-slave'}

    stages {

        stage('build') {

            steps {

                sh 'whoami'

                sh 'pwd'

                sh 'pkill java'

                sh 'echo ${BUILD_NUMBER}'                
               
               sh 'ls -la'
    
               sh  'touch test.txt'

               sh 'scp test.txt jenkins-master.personal:~'

                sh 'echo testScript.sh ${BUILD_NUMBER} | ssh jenkins-master.personal /bin/bash'
                
            }

    }

}

}
