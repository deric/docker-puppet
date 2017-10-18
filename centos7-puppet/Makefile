NAME=deric/centos7-puppet
all: release

release:
	$(call RELEASE,$(v))

build:
	$(call compile);

define compile
	docker build -f Dockerfile -t $(NAME) .
endef

define RELEASE
	$(call compile);
	docker tag $(NAME) $(NAME):$(1)
	docker push $(NAME):$(1)
endef
