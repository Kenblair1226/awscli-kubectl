FROM alpine

MAINTAINER Ken Chen <blair1226@gmail.com>

RUN apk update \
 &&  apk add ca-certificates curl py-pip \
 &&  pip install --upgrade pip awscli \
 &&  curl -L https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 &&  chmod +x /usr/local/bin/kubectl \
 &&  rm /var/cache/apk/*
