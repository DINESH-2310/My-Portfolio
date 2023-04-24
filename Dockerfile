FROM node:16-alpine

RUN mkdir -p /usr/app/

WORKDIR /usr/app/

COPY package.json .

COPY yarn.lock .

RUN npm install

COPY ./ ./

EXPOSE 3000

CMD ["npm", "start"]