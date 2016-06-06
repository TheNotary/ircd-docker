DOCKER_IMAGE_NAME = ngircd

build:
	docker build -t ${USER}/${DOCKER_IMAGE_NAME} .

run:
	docker run -d -p 6667:6667 ${USER}/${DOCKER_IMAGE_NAME}

console:
	docker run -it ${USER}/${DOCKER_IMAGE_NAME} bash

.PHONY: build
