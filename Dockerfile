FROM node:12-alpine as base
WORKDIR /blog
COPY . ./
RUN npm install --production --registry=https://registry.npm.taobao.org --disturl=https://npm.taobao.org/mirrors/node --build-from-source
RUN npm --registry=https://registry.npm.taobao.org install hexo-cli -g
RUN hexo clean && hexo g
CMD ["npm","start"]
EXPOSE 4000
