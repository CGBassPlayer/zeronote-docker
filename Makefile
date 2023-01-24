VERSION=0.1.1

docker-build:
	docker build --build-arg build_date=$$(date -d now +%F) --build-arg zeronote_version=0.0.1 -t ghcr.io/cgbassplayer/zeronote-docker/zeronote:$(VERSION) -f docker/$(VERSION)/Dockerfile .

dev-docker: docker-build
	docker run --rm -it --name=zeronote-dev -p 8080:80 ghcr.io/cgbassplayer/zeronote-docker/zeronote:$(VERSION)

dev-local:
	./zeronote/runlocal.sh
