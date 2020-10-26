FROM docker:latest

RUN apk add curl jq python3 py-pip docker-compose vault
RUN pip install awscli
