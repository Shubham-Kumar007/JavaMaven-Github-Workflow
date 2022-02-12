pipeline {
    agent any
    tools
    {
        maven 'Maven'
        jdk 'Java'
    }

    stages 
    {
        stage('build war') 
        {
            steps 
            {
                bat 'mvn clean package'
            }
        }
		stage('run jar')
		{
			steps
			{
				bat 'mvn exec:java -Dexec.mainClass=com.javadocker.HelloWorld'
			}
		}
		stage('Deploy to Tomcat Server')
		{
			steps
			{
		    deploy adapters: [tomcat9(credentialsId: 'admin', path: '', url: 'http://localhost:8181/')], contextPath: 'maven-tomcat', war: '**/*.war'
			}
		}
    }
    
  
}
