pipeline {

    agent {label 'jenkins-slave'}
    environment { 
        artifact_Token = withCredentials([string(credentialsId: 'Token', variable: 'SECRET')]) { 
                    echo "My secret text is ${SECRET}"
    }
    }
    stages {

        stage('build') {
        
            steps {
                sh ' echo ${artifact_Token}' 

                sh 'whoami'

                sh 'pwd'
                
                sh 'pkill java'

                sh 'echo ${BUILD_NUMBER}'                
               
               sh 'ls -la'
    
               sh  'touch test.txt'

               sh 'scp test.txt jenkins-master.personal:~'
                
                sh 'sleep 20s'
                
                sh ' sed -i s/{BuildNumber}/${BUILD_NUMBER}/g testScript.sh'
                
                sh ' sed -i s/{Token}/test123/g testScript.sh '
                
                sh 'sh testScript.sh | ssh jenkins-master.personal /bin/bash'
                
            }

    }

}

}
