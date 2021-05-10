FROM docker:latest

ENV TZ Europe/Bratislava
RUN apk add curl jq python3 py-pip docker-compose vault nodejs npm git tzdata kubectl
RUN pip install awscli
RUN npm install total.js@3.4.6-5 uuid-random aws-sdk
RUN mkdir -p ~/.docker/cli-plugins && \
    wget https://github.com/docker/buildx/releases/download/v0.5.1/buildx-v0.5.1.linux-amd64 -O ~/.docker/cli-plugins/docker-buildx && \
    chmod +x /root/.docker/cli-plugins/docker-buildx
