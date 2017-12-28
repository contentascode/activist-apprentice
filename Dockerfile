From node:8.9

RUN apt-get update -qq && apt-get -qq -y install pandoc
RUN rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm i -g npm
RUN npm i -g docsmith@beta

COPY package.json /usr/src/app/
RUN npm i -g
COPY . /usr/src/app

CMD ["apprentice", "config"]
