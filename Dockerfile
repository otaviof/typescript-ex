FROM node:alpine

WORKDIR /src

COPY . .
RUN npm install
RUN npm run build

ENTRYPOINT [ "npm", "start" ]
EXPOSE 8080