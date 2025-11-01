#FROM fake_repo_to_make_linter_happy_DELETE_THIS

FROM node:18-alpine

WORKDIR /userapp

COPY package.json ./

#RUN npm install --production
RUN npm ci --only=production

COPY ./ ./

# EXPOSE 3000

CMD ["npm", "start"]