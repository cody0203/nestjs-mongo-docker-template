FROM node:12.13-alpine
WORKDIR /usr/src/app

COPY package.json .
RUN yarn install
RUN yarn build

COPY . .

EXPOSE 3000
CMD [ "yarn", "start:prod" ]
