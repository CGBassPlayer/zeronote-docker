VERSION=0.1.0

docker-build:
	docker build --build-arg build_date=$$(date -d now +%F) --build-arg zeronote_version=0.0.1 -t ghcr.io/cgbassplayer/zeronote -f docker/Dockerfile.0.1.0 .

docker-tag: docker-build
	docker tag ghcr.io/cgbassplayer/zeronote ghcr.io/cgbassplayer/zeronote:$(VERSION)

dev-docker: docker-build
	docker run --rm -it --name=zeronote-dev -p 8080:80 ghcr.io/cgbassplayer/zeronote

dev-local:
	./zeronote/runlocal.sh
