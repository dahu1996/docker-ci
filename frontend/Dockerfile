FROM node:14-alpine as build

ADD . /app

WORKDIR /app

RUN yarn config set registry https://registry.npm.taobao.org/ && \
    yarn && \
    yarn build