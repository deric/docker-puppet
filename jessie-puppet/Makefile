NAME=deric/jessie-puppet
VERSIONS=$(shell cat versions.txt)
all: release

release:
	$(foreach var,$(VERSIONS),$(call RELEASE,$(var));)

build:
	$(foreach var,$(VERSIONS),$(call BUILD,$(var));)

puppet:
	$(call BUILD,$(v));

define BUILD
	docker build --build-arg puppet_version=$(1) -t $(NAME) .
	docker tag $(NAME) $(NAME):$(1)
endef

define RELEASE
	$(call BUILD,$(var));
	docker tag $(NAME) $(NAME):$(1)
	docker push $(NAME):$(1)
endef

