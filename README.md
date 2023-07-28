# Week 6 Assignment - Dockerize Nodejs Hello World App
OS: Windows 11 Version 22H2
Docker Desktop: 4.21.1.114176
NodeJS: Version 18.17.0(LTS)
## Install Docker and Update WSL
1. Download docker desktop from www.docker.com and run it
   
   https://github.com/RevoU-FSSE-2/Muhammad-Faisal-Kemal_Weekly_W6/assets/130155172/9e9f3575-7250-4230-8a47-2004e2e13815
2. Update Windows Subsystem for Linux with this command and run docker desktop again
   ```
   wsl --update
   ```
   https://github.com/RevoU-FSSE-2/Muhammad-Faisal-Kemal_Weekly_W6/assets/130155172/3c187512-3e87-4760-92d6-e5958b923dce
3. Verify docker installation with this command
   ```
   docker --version
   ```
   ![6i_1](https://github.com/RevoU-FSSE-2/Muhammad-Faisal-Kemal_Weekly_W6/assets/130155172/234e0cb9-95d3-4afa-88d7-3048e7067b77)
## Download Nodejs Image on Docker
   - Download nodejs version 18.17.0(LTS) image on docker with this command
      ```
      docker pull node:18.17.0-alpine
      ```
      
      https://github.com/RevoU-FSSE-2/Muhammad-Faisal-Kemal_Weekly_W6/assets/130155172/81977c8a-3742-487e-8781-c53f74f2b242
   - For other version of nodejs images tag, you can check at this link https://hub.docker.com/_/node/

## Download Nodejs Hello World(app.js) and Prepare Dockerfile
1. Download app.js from https://gist.github.com/berdoezt/e51718982926f0caa3fcd8ed45111430 and move to new folder
2. Create file with name Dockerfile, edit file with this code, and save at same folder with app.js
   ```
   #Tells docker base image to use
   #nodejs version 18.17.0-alpine(LTS version)
   FROM node:18.17.0-alpine

   #The environment application is production
   ENV NODE_ENV=production

   #Location of working directory
   WORKDIR	/app

   #The COPY command takes all the files located in
   #the current directory and copies them into the image
   COPY . .

   #Informs Docker that the container listens
   #on the port 3001
   EXPOSE	3001

   #Tell Docker what command to run
   CMD	["node", "app.js"]
   ```

## Dockerize Nodejs Hello World(app.js) And Run It
1. Open folder of the app on command prompt, after that run this command
   ```
   docker build -t nodejs_hello-world .
   ```
2. Check images succesful built with this command
   ```
   docker images
   ```
3. Run app with this command(binds port 3001 of container to port 3000 of host)
   ```
   docker run -p 3000:3001 nodejs_hello-world
   ```
4. Finally, open browser to check app running well with this link
   ```
   localhost:3000
   ```
   
   https://github.com/RevoU-FSSE-2/Muhammad-Faisal-Kemal_Weekly_W6/assets/130155172/e8eccb1a-8254-4109-b658-08b10ba0c393


[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/nj7iw4Wb)
