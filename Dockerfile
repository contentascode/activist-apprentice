From node:8

RUN apt-get update -qq && apt-get -qq -y install pandoc libssl-dev libcurl4-openssl-dev build-essential
RUN rm -rf /var/lib/apt/lists/*

RUN npm install npm@latest
RUN rm -rf /usr/local/lib/node_modules/npm
RUN mv node_modules/npm /usr/local/lib/node_modules/npm

RUN npm -g config set user root
RUN npm i -g docsmith@beta

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm i -g
COPY . /usr/src/app

CMD ["apprentice", "config"]
