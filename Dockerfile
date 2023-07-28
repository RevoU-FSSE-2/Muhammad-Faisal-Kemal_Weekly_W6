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

#informs Docker that the container listens
#on the port 3001
EXPOSE	3001

#Tell Docker what command to run
CMD	["node", "app.js"]