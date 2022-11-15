# go to docker hub and get Alpine Linux with Node 16 installed...
FROM node:16-alpine3.15

# create a working directory and copy all files (except those in .dockerignore)
WORKDIR /src/
COPY . .

# install our dependecies
RUN npm install

# set enviromental variables (to port 3000)
ENV PORT=3000

# open up port
EXPOSE 3000

# this is the command to run whenever we start a new container
CMD [ "npm", "start" ]


# were copying all the files on the left side in here