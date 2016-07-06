NAME=deric/jessie-puppet
VERSIONS=$(shell cat versions.txt)
all: build

build:
	$(foreach var,$(VERSIONS),$(call RELEASE,$(var));)

define RELEASE
	docker build --build-arg puppet_version=$(1) -t $(NAME) .
	docker tag $(NAME) $(NAME):$(1)
	docker push $(NAME):$(1)
endef

