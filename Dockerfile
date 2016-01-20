# DOCKER-VERSION 1.4.1

# retrive the node docker image
FROM registry.ng.bluemix.net/ibmnode:latest

# retrieve the app source code
RUN git clone https://github.com/edevregille/todo-app-cloudant.git

WORKDIR todo-app-cloudant

RUN npm install

# expose port
EXPOSE 8080

#launch the app
CMD sleep 60 && node server.js
