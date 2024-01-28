FROM node:lts-buster

COPY package.json .

RUN npm install && npm install -g pm2
 
COPY . .

EXPOSE 5000

CMD ["pm2-runtime", "server.js"]
