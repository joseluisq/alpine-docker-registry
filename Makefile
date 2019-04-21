build:
	-docker build -t alpine-docker-registry:latest -f Dockerfile .
.PHONY: build
