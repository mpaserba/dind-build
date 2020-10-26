FROM docker:latest

RUN apk add curl jq python3 py-pip docker-compose
RUN pip install awscli
