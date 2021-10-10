FROM python:3-alpine

RUN apk update && \
apk add --no-cache git npm && \
git clone https://github.com/moleculerjs/moleculer-examples.git && \
npm config set registry https://registry.npm.taobao.org

WORKDIR moleculer-examples/blog

RUN npm install
CMD ['npm', 'start']
