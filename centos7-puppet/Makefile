NAME=deric/centos7-puppet
all: release

release:
	$(call RELEASE)

build:
	$(call P387);

define P387
	docker build -f Dockerfile -t $(NAME) .
endef

define RELEASE
	$(call P387);
	docker tag $(NAME) $(NAME):3.8.7
	docker push $(NAME):3.8.7
endef

