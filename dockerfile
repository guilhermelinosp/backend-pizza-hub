FROM node:lts-alpine
EXPOSE 80
EXPOSE 443

RUN apk add --no-cache bash

USER node

WORKDIR /home/node/app

COPY . .

RUN yarn install

RUN yarn build

CMD ["yarn", "start"]
