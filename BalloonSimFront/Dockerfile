FROM node:14

RUN apt-get update && apt-get install
RUN npm install

WORKDIR /var/www

COPY ["package.json", "package-lock.json", "./"]

RUN npm install
