FROM partlab/ubuntu-iojs

MAINTAINER Régis Gaidot <regis@partlab.co>

RUN mkdir /letschat
WORKDIR /letschat

COPY package.json /letschat/
RUN npm install --production
COPY . /letschat/

ENV LCB_DATABASE_URI mongodb://db/letschat

CMD ["npm", "start"]
