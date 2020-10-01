REGISTRY=docker.io
REPOSITORY=tomersha/tsung

all: build

build:
	@docker build -t $(REPOSITORY):latest -f 1.7/Dockerfile .
	@docker tag $(REPOSITORY):latest $(REPOSITORY):1.7

submit: build
	@docker push $(REGISTRY)/$(REPOSITORY):latest
	@docker push $(REGISTRY)/$(REPOSITORY):1.7
