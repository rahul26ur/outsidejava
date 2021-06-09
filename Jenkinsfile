node{
      
    stage('SCM Checkout')
    {
         git url: 'https://github.com/rahul26ur/outsidejava.git'
       
    }
    
    
    stage ('Build Stage') 
    {    
         //withMaven(maven : 'maven_3_6_3') {
         // sh 'mvn clean compile'
         //}
        // steps {
          //  withMaven(maven : 'maven_3_6_3') {
            //sh 'mvn clean compile'
            //}   
        // }
         //sh 'mvn clean compile'
         //sh 'mvn install'
         //sh 'mvn package'
         //sh 'mvn clean install'
         //sh "cd /var/lib/jenkins/workspace/rahjava8 \n /usr/bin/mvn clean package spring-boot:repackage"
          //sh "cd /var/lib/jenkins/workspace/rahjava8 \n /usr/bin/mvn clean package"
         //sh "cd /var/lib/jenkins/workspace/rahjava8 \n /usr/bin/mvn clean package  -Dstart-class=com.rah.rest.webservices.rahrestwebservices.helloworld"
         sh "cd /var/lib/jenkins/workspace/rahjava10 \n /usr/bin/mvn clean package"
        
      
    }
    
    stage('Run Docker Compose File')
    {
        
        sh 'sudo docker-compose build'
        //sh 'sudo docker-compose build'
        sh 'sudo docker-compose up -d'
    }
    
    /*
    stage('PUSH image to Docker Hub')
    {
        withCredentials([string(credentialsId: 'DockerHubPassword', variable: 'DHPWD')]) 
        {
            sh "docker login -u vardhanns -p ${DHPWD}"
        }
        sh 'docker push vardhanns/phpmysql_app'
    }
    */
}

