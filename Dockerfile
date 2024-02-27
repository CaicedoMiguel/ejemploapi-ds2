
FROM node:alpine


WORKDIR /usr/src/app


COPY package*.json ./

RUN npm config set strict-ssl false


RUN npm install


COPY . .


EXPOSE 3000


CMD [ "node", "server.js" ]
