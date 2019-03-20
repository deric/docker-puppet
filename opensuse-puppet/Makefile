NAME=deric/opensuse-puppet
all: release

pull:
	docker pull `head -n 1 Dockerfile | awk '{ print $$2 }'`

release: pull
	$(call RELEASE,harlequin-3.8.5)

build: pull
	$(call harlequin);

define harlequin
	docker build -f Dockerfile-harlequin -t $(NAME) .
endef

define RELEASE
	$(call harlequin);
	docker tag $(NAME) $(NAME):$(1)
	docker push $(NAME):$(1)
endef
