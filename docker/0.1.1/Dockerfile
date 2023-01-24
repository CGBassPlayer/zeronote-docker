FROM nginx:alpine

ARG BUILD_DATE
ARG VERSION=0.1.1
ARG ZERONOTE_VERSION

LABEL org.opencontainers.artifact.created="${BUILD_DATE}"
LABEL org.opencontainers.artifact.description="Note-taking web app designed for touch screens with styluses."
LABEL org.opencontainers.artifact.version="${ZERONOTE_VERSION}"
LABEL org.opencontainers.image.created="${BUILD_DATE}"
LABEL org.opencontainers.image.authors = "CGBassPlayer, OscarSaharoy"
LABEL org.opencontainers.image.url="https://github.com/CGBassPlayer/zeronote-docker/pkgs/container/zeronote-docker%2Fzeronote"
LABEL org.opencontainers.image.documentation = "https://github.com/CGBassPlayer/zeronote-docker/pkgs/container/zeronote-docker%2Fzeronote"
LABEL org.opencontainers.image.source="https://github.com/CGBassPlayer/zeronote-docker"
LABEL org.opencontainers.image.version="${VERSION}"
LABEL org.opencontainers.image.licenses="GPL-2.0"
LABEL org.opencontainers.image.title="zeronote-docker/zeronote"
LABEL org.opencontainers.image.base.name="nginx:alpine"

RUN rm -rf /usr/share/nginx/html/*
COPY ./zeronote/ /usr/share/nginx/html/

EXPOSE 80
