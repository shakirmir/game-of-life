node {
    stage('SCM') {
        git 'https://github.com/shakirmir/game-of-life.git'
    }
    
    stage('Build & Package') {
        withSonarQubeEnv('sonar') {
            sh 'mvn clean package sonar:sonar'
        }
    }
    
   
    
    stage('Results'){
        archive 'gameoflife-web/target/gameoflife.war'
        junit 'gameoflife-web/target/surefire-reports/*.xml'
    }
}
