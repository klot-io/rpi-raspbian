ACCOUNT=klotio
IMAGE=rpi-raspbian
VERSION?=0.1
.PHONY: build shell push

build:
	docker build . -t $(ACCOUNT)/$(IMAGE):$(VERSION)

shell:
	docker run -it $(ACCOUNT)/$(IMAGE):$(VERSION) sh

push:
	docker push $(ACCOUNT)/$(IMAGE):$(VERSION)
