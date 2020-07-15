FROM node:12-alpine as base
WORKDIR /blog
COPY package.json .
RUN npm install --production --registry=https://registry.npm.taobao.org --disturl=https://npm.taobao.org/mirrors/node --build-from-source

FROM node:12-alpine as prod
WORKDIR /blog
COPY . /

CMD ["npm","server"]
EXPOSE 4000
