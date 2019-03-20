NAME=deric/jessie-puppet
VERSIONS=$(shell cat versions.txt)
all: releases

pull:
	docker pull `head -n 1 Dockerfile | awk '{ print $$2 }'`

release: pull
	$(call RELEASE,$(v))

releases: pull
	$(foreach var,$(VERSIONS),$(call RELEASE,$(var));)

build: pull
	$(foreach var,$(VERSIONS),$(call BUILD,$(var));)

puppet: pull
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

