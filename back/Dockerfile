FROM node:10

RUN npm install -g nodemon

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 4200 49153

CMD [ "npm", "start" ]
