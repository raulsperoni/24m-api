FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm install pm2 -g
COPY . .
EXPOSE 3339
CMD ["pm2-docker", "start", "process.json"]
