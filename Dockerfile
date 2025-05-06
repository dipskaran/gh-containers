FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.c1fj2in.mongodb.net
ENV MONGODB_USERNAME dipskaran
ENV MONGODB_PASSWORD lNyrNK3ftOUI4CoA

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]