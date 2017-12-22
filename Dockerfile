From node:8.9

RUN apt-get update -qq && apt-get -qq -y install pandoc
RUN rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN yarn
COPY . /usr/src/app

RUN yarn global add docsmith@beta
RUN yarn global add

CMD ["apprentice", "config"]
