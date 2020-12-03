pipeline {
    agent {label 'jenkins-slave'}
    stages {
        stage('build') {
            steps {
                sh 'echo params.Build_Number'
                sh 'whoami'
                sh 'pwd'
                sh 'pkill java'
                sh 'ls -la'
                sh  'touch test.txt'
                
                sh 'scp test.txt jenkins-master.personal:~'
                sh 'sleep 20s'
                sh 'cat testScript.sh | ssh jenkins-master.personal /bin/bash'
                //sh 'git clone https://github.com/daniyalAhmed-code/fileDeploy.git'
                //sh 'mv fileDeploy/testFile.json .'
                //sh 'ssh ec2-user@i-0c19c8f41cf290671 ls -la'
                //sh 'aws ssm send-command --document-name "AWS-RunShellScript" --targets "Key=InstanceIds,Values=i-0c19c8f41cf290671" --cli-input-json file://testFile.json'
                //sh 'rm -rf fileDeploy'
                //sh 'rm testFile.json'
            }
    }
}
}
