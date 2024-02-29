pipeline {
	agent any

	stages {

            stage('Build') {
            	steps {
                    checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/danilogv/springboot-jenkins-docker.git']]])
                    sh "git config user.name 'danilogv'"
                    sh "git config user.email 'danilo.gv@hotmail.com'"
                    sh "chmod +x mvnw"
                    withMaven {
                        sh "./mvnw clean install -DskipTests"
                    }
                }
            }

   	}

}
