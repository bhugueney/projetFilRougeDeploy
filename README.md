# projetFilRougeDeploy

## Purpose

This repository contains a docker compose archive whose purpose is to allow the "myIGCoach 'FilRouge' project" to be tested quickly and simply.


## Usage

To run the test follow these steps :

1. Be sure to have docker and docker-compose installed

2. be sure to have ports 5433,532,8095,4200 free on your computer

  * database port : 5432 in docker container, 5433 outside
  * backend server port : 8095
  * front server port : 4200
  
	(These ports can be changed in application.properties, startBackEndServer.sh, Dockerfile.alpine-java-backend, startFrontServer.sh, Dockerfile.alpine-java-front, docker-compose.yml files)

3. with Git, clone the repository to your computer

4. From the cloned folder, run 
    to start : docker-compose up --build
    to stop : CTRL-C then docker-compose down
    
5. when the servers are running, with your favorite browser (fully tested on chrome), go to url : localhost:4200

6. For testing follow [ManuelUtilisateur.pdf](ManuelUtilisateur.pdf)


## Further help

Feel free to join us on Slack or by email

[Gabriel Wisniewski](gabriel.wisniewski@gmail.com)

[Frederik Pareja](frederic.pareja.pf1@gmail.com)

[Hugues Poumeyrol](hugues.poumeyrol.pf1@gmail.com)
