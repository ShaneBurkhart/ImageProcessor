IMAGE_TAG=shaneburkhart/image-processor

all: run

build:
	 docker build -t ${IMAGE_TAG} -f Dockerfile .

c_image:
	docker run --rm --env-file user.env -v $(shell pwd)/scripts:/app/scripts -v $(shell pwd)/input:/app/input -v $(shell pwd)/output:/app/output -it ${IMAGE_TAG} /bin/bash

shrink_png:
	pngnq -n 256 image.png && pngcrush image-nq8.png smallimage.png

download_s3:
	aws s3 cp s3://construction-vr/renderings/Walnut\ St/44A/raw/ . --recursive
