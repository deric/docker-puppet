NAME=deric/centos8-puppet
VERSIONS=$(shell cat versions.txt)
all: releases

release:
	docker pull `head -n 1 Dockerfile | awk '{ print $$2 }'`
	$(call RELEASE,$(v))

releases:
	docker pull `head -n 1 Dockerfile | awk '{ print $$2 }'`
	$(foreach var,$(VERSIONS),$(call RELEASE,$(var));)

build:
	docker pull `head -n 1 Dockerfile | awk '{ print $$2 }'`
	$(call BUILD,$(v));

puppet:
	$(call BUILD,$(v));

define BUILD
	docker build --build-arg puppet_version=$(1) -t $(NAME) .
	docker tag $(NAME) $(NAME):$(1)
endef

define RELEASE
	$(call BUILD,$(1));
	docker tag $(NAME) $(NAME):$(1)
	docker push $(NAME):$(1)
endef

