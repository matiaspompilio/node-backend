FROM node:10

RUN mkdir /src
RUN npm install nodemon -g

# Create app directory
WORKDIR /src

ADD api/package.json /src/package.json

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

ADD api/nodemon.json /src/nodemon.json

EXPOSE 3000

CMD ["nodemon", "./bin/www", "--host", "0.0.0.0"]