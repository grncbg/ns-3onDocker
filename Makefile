NAME=teapot/ns3

.PHONY: build
build: Dockerfile
	docker build -t $(NAME)