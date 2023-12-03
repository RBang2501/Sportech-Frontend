FROM node:18.13.0-alpine

WORKDIR /app

COPY ./sportech-frontend-firebase-adminsdk-smh65-e6f5d4c18c.json ./serviceAccountKey.json

COPY ./package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
