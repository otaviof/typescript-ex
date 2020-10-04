FROM node:alpine

WORKDIR /src

COPY package.json .
RUN npm install

ADD . .
RUN npm run build

ENTRYPOINT [ "npm", "start" ]
EXPOSE 8080