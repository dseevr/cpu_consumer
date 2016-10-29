BUILD_IMAGE_NAME=cpu_consumer_build
IMAGE_NAME=billrobinson/cpu_consumer

.PHONY: all build clean push

all: build

build:
	docker build -t $(BUILD_IMAGE_NAME) -f Dockerfile.build .
	docker run --rm -v $(shell pwd)/build/output:/build/output $(BUILD_IMAGE_NAME)
	docker build --no-cache -t $(IMAGE_NAME) .

clean:
	docker rmi -f $(BUILD_IMAGE_NAME) $(IMAGE_NAME)
	echo "Deleting compiled binary:"
	sudo rm build/output/cpu_consumer

push: build
	docker push $(IMAGE_NAME)
