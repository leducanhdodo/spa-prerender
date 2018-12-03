FROM node:latest

MAINTAINER Duc Anh Le <leducanhdodo@gmail.com>
RUN apt-get update -y && apt-get install -y curl wget

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
  && apt-get update -y \
  && apt-get install google-chrome-stable -y \
  && apt-get clean \
  && rm -rf /tmp/* /var/lib/apt/lists/*

# Add Chrome as a user
RUN groupadd -r chrome && useradd -r -g chrome -G audio,video chrome \
    && mkdir -p /home/chrome && chown -R chrome:chrome /home/chrome

WORKDIR /home/chrome
COPY . /home/chrome
RUN  npm install && chown -R chrome:chrome /home/chrome/

USER chrome

CMD ["node", "server.js"]

EXPOSE 3000
