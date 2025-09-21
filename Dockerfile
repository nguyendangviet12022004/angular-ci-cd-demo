FROM node:lts-alpine3.22

WORKDIR /app

COPY  *.json ./

RUN npm install
RUN npm install -g @angular/cli

COPY .  .

EXPOSE 4200

ENTRYPOINT [ "ng", "serve" , "--host", "0.0.0.0"]

