FROM ubuntu:16.04
FROM node:8

RUN apt-get update &&
  apt-get install git &&
  git clone https://github.com/poanetwork/token-wizard.git wiz &&
  cd wiz &&
  git submodule update --init --recursive --remote &&
  npm install &&
  cp .env.example .env

EXPOSE 3000
CMD [ "npm run start" ]



