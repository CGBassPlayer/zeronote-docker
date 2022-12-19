FROM nginx:alpine

ARG BUILD_DATE
ARG VERSION=0.1.0
ARG ZERONOTE_VERSION

LABEL maintainer="CGBassPlayer"
ENV VERSION="${VERSION}"
ENV ZERONOTE_VERSION="${ZERONOTE_VERSION}"
ENV BUILD_DATE="${BUILD_DATE}"

RUN rm -rf /usr/share/nginx/html/*
COPY ./zeronote/ /usr/share/nginx/html/

EXPOSE 80
