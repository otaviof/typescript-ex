FROM node:alpine

WORKDIR /src

COPY package.json .
RUN npm install

COPY . .
RUN npm run build

ENTRYPOINT [ "npm", "start" ]
EXPOSE 8080