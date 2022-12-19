# ZeroNote

ZeroNote is a note-taking web app designed for touch screens with styluses. It doesn't require a download; you can start using it right now [here](https://oscarsaharoy.github.io/zeronote/).
It is meant to be a replacement for the drawing in OneNote but hopefully less buggy.
Draw with one finger/stylus and pan & zoom with two.

## Docker 🐳

Docker Run

```shell
docker run -d --name=zeronote -p 80:80 ghcr.io/cgbassplayer/zeronote:latest
```

Docker Compose

```yaml
version: '3.9'

services:
  zeronote:
    image: ghcr.io/cgbassplayer/zeronote:latest
    container_name: zeronote
    restart: unless-stopped
    ports:
      - 80:80
```