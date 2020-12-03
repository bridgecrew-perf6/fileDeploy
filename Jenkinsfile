pipeline {
    agent any
        stages {
            stage('Parameters'){
                steps {
                    script {
                    properties([
                            parameters([
                                [$class: 'ChoiceParameter', 
                                    choiceType: 'PT_SINGLE_SELECT', 
                                    description: 'Select the Environemnt from the Dropdown List', 
                                    filterLength: 1, 
                                    filterable: false, 
                                    name: 'Env', 
                                    script: [
                                        $class: 'GroovyScript', 
                                        fallbackScript: [
                                            classpath: [], 
                                            sandbox: false, 
                                            script: 
                                                "return['Could not get The environemnts']"
                                        ], 
                                        script: [
                                            classpath: [], 
                                            sandbox: false, 
                                            script: '''
                                                def builds = []
                                                def job = jenkins.model.Jenkins.instance.getItem('test-jenkins')
                                                job.builds.each {
                                                def build = it
                                                if (it.getResult().toString().equals("SUCCESS")) {
                                                it.badgeActions.each {
                                                builds.add(build.displayName[1..-1])
                                                }
                                                }
                                                }
                                                builds.unique(); 
                                                '''
                                        ]
                                    ]
                                ]
                           ])
                        ])
                    }
                }
            }
        }
    
}
