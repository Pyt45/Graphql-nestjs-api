FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm i -g npm@7.30.5

RUN npm audit fix --force

RUN npm i

COPY . .

RUN npm run build

EXPOSE 8080

CMD ["node", "dist/src/main.js"]
