NAME=deric/opensuse-puppet
all: release

release:
	$(call RELEASE,harlequin-3.8.5)

build:
	$(call harlequin);

define harlequin
	docker build -f Dockerfile-harlequin -t $(NAME) .
endef

define RELEASE
	$(call harlequin);
	docker tag $(NAME) $(NAME):$(1)
	docker push $(NAME):$(1)
endef
