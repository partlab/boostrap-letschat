FROM partlab/ubuntu-iojs

RUN apt-get update && apt-get install python build-essential -y && npm install -g node-gyp

RUN mkdir /letschat
WORKDIR /letschat

COPY package.json /letschat/
RUN npm install --production
COPY . /letschat/

ENV LCB_DATABASE_URI mongodb://db/letschat

CMD ["npm", "start"]
