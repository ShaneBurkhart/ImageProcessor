IMAGE_TAG=shaneburkhart/image-processor

all: run

build:
	 docker build -t ${IMAGE_TAG} -f Dockerfile.image .

c_image:
	docker run --rm -v $(shell pwd)/input:/app -v $(shell pwd)/output:/output -it ${IMAGE_TAG} /bin/sh
