FROM node:20.12-alpine

COPY package.json package-lock.json ./

RUN npm install

COPY ./ ./

RUN npm test

CMD [ "npm", "start" ]