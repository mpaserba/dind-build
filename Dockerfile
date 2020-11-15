FROM docker:latest

ENV TZ Europe/Bratislava
RUN apk add curl jq python3 py-pip docker-compose vault nodejs npm git
RUN pip install awscli
RUN npm install total.js@3.4.6-5 uuid-random aws-sdk
