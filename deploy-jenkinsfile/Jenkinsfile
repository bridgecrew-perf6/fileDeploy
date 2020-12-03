pipeline {

    agent {label 'jenkins-slave'}
   
    stages {

        stage('build') {
        
            steps {
                withCredentials([string(credentialsId: 'Token', variable: 'SECRET')]) { 
                sh 'whoami'

                sh 'pwd'
                
                sh 'pkill java'

                sh 'echo ${BUILD_NUMBER}'                
               
               sh 'ls -la'
    
               sh  'touch test.txt'

               sh 'scp test.txt jenkins-master.personal:~'
                
                sh 'sleep 20s'
                
                sh ' sed -i s/{BuildNumber}/${BUILD_NUMBER}/g testScript.sh'
                
                sh ' sed -i s/{Token}/${SECRET}/g testScript.sh'
                
                sh 'cat testScript.sh | ssh jenkins-master.personal /bin/bash'
                    
    }            }

    }

}

}
