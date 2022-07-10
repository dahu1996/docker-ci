FROM node:14-alpine as build

ADD . /app

WORKDIR /app

RUN yarn config set registry https://registry.npm.taobao.org/ && \
    yarn && \
    yarn build

FROM keymetrics/pm2:latest-alpine as pm2

ADD process.yml /app/
COPY --from=build /app/dist /app/dist
COPY --from=build /app/node_modules /app/node_modules

WORKDIR /app

EXPOSE 3000

CMD ["pm2-runtime", "start", "process.yml"]
# CMD ["node", "dist/main.js"]