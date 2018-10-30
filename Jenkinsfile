
node{
    
    stage('SCM'){
    git 'https://github.com/shakirmir/game-of-life.git'
    }
    
    stage('Build and package'){
	withSonarQubeEnv('sonarqube')
        sh 'mvn package sonarqube:sonarqube'

    }
    
    stage('archive the artifact'){
        archive 'gameoflife-web/target/gameoflife.war'

    }
      stage('Test Results'){
          junit 'gameoflife-web\\target\\surefire-reports\\*.xml'

      }  
    }







