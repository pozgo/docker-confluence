<<<<<<< HEAD
=======
#### Confluence Docker
Based on:

Docker image polinux/centos7:latest

Confluence 5.5.3

Java 1.7.0

mysql-connector-java-5.1.31

#### Installation
Pull image from Docker Hub

`docker pull polinux/confluence:latest`

Start Container

`docker run -d --name confluence --net host polinux/confluence:latest`

Go to localhost:8090 and follow confluence setup. 

Done :)

FYI: Server ID will be generated when container starts. 
>>>>>>> 7e0f8b2... Final - All moved to one layer
