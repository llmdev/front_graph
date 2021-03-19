FROM node

WORKDIR /app

COPY package.json .

RUN npm config set unsafe-perm true

RUN npm install

RUN chmod a+x /app/node_modules/.bin/react-scripts

EXPOSE 3000

CMD ["npm", "start"]



