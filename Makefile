NAME = teapot/ns3

.PHONY: build
build: Dockerfile
	docker build -t $(NAME) .

.PHONY: run
run:
	docker run --rm -it $(NAME)