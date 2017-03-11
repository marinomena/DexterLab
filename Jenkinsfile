
node {
 
  stage('Checkout') {
	  git url: 'https://github.com/marinomena/lab.git'
	  
	  def mvnHome = tool 'maven-3'
	  env.PATH = "${mvnHome}/bin:${env.PATH}"
  }
  
  stage('Build'){
	sh 'mvn clean package'
  }

  stage('Docker build'){
  	def image = docker.build('initial/ingatms:latest', '.')
  }

}