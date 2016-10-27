DOCKER_IMAGE_NAME = ircd-docker

build:
	docker build -t ${USER}/${DOCKER_IMAGE_NAME} .

run:
	docker run -d \
    -p 6667:6667 \
    ${USER}/${DOCKER_IMAGE_NAME}

console:
	docker run \
    -p 6667:6667 \
    --entrypoint="/bin/sh" \
    -it ${USER}/${DOCKER_IMAGE_NAME} 

.PHONY: build
