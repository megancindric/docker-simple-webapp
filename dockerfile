#Specify base image
FROM node:alpine

#Set up working directory
WORKDIR /app

#COPY <src> <dest>
COPY package.json ./
#Then install dependencies
RUN npm install

#Copy in necessary files
COPY ./ ./

#Default command
CMD ["npm", "start"]

#To build & tag with a name:
    #docker build -t <dockerid>/<imagename>

#To provide access into container:
    #docker run -p <incomingport> : <containerport> <dockerid>/<imagename>