FROM mhart/alpine-node:4.2.4

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app

USER nobody
CMD ["npm", "start"]
