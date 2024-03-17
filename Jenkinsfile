pipeline {
	agent any
	
	stages {
	    stage('Checkout') {
	        steps {
			checkout scm			       
		      }}
		stage('Build') {
	           steps {
			  sh '/home/onkar/Documents/Devops_Softawre/apache-maven-3.9.6/bin/mvn install'
	                 }}
		stage('Deployment'){
		    steps {
			sh 'cp target/Netflix7.war /home/onkar/Documents/Devops_Softawre/apache-tomcat-9.0.85/webapps'
			}}
			stage('Docker build'){
		    steps {
			sh 'docker build -t onkarhub/pipelineimage1 .'
			}}
			stage('Container creation'){
		    steps {
			sh 'docker run -it -d --name=container-pipeline onkarhub/pipelineimage1 /bin/bash'
			}}	
}}
