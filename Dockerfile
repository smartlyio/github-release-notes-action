FROM node:12-alpine
ENV GREN_VERSION 0.17.0
RUN apk add --update git && \
  npm install github-release-notes@$GREN_VERSION -g

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
