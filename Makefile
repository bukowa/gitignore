DOCKER_TAG?=gitignore

build:
	docker build --tag=${DOCKER_TAG} .

run: build
	docker run --rm --volume=${PWD}:/app ${DOCKER_TAG} $(args)


.PHONY: build run
