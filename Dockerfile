FROM node:18.13.0-alpine

WORKDIR /app

COPY ./sportech-frontend-firebase-adminsdk-smh65-e6f5d4c18c.json /app/serviceAccountKey.json

COPY ./package*.json /app

RUN npm install

COPY . /app

EXPOSE 3000

CMD ["npm", "start"]
