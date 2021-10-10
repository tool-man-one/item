FROM python:3-alpine

RUN apk update && apk add --no-cache ansible=2.10.6 openssh

ENTRYPOINT ["ansible-playbook"]