#FROM fake_repo_to_make_linter_happy_DELETE_THIS

FROM node:18-alpine

WORKDIR /userapp

COPY package.json package-lock.json ./

RUN npm install --production

COPY ./ ./

# EXPOSE 3000

RUN npm test

CMD ["npm", "start"]