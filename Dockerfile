FROM node:8
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 7000
CMD [ "npm", "run", "server-dev" ]
