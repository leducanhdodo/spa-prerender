FROM node:latest

MAINTAINER Duc Anh Le <leducanhdodo@gmail.com>

RUN apt-get update -y && sudo apt-get install -y curl wget

RUN mkdir /data

ADD ./package.json /data/package.json
RUN cd /data && npm install

ADD . /data/

RUN chmod a+x /data/deployment/install.sh && /data/deployment/install.sh

RUN chmod a+x /data/deployment/start-chrome.sh && chmod a+x /data/startup_script.sh

CMD ["data/startup_script.sh"]

EXPOSE 3000
