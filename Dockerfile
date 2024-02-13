FROM node:10.24.1-buster-slim

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y \
    git-core \
    bzip2 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /data \
 && cd /data \
 && npm install rstacruz/kingraph

ENTRYPOINT ["/data/node_modules/kingraph/bin/kingraph"]
