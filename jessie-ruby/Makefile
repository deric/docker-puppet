NAME=deric/jessie-ruby
all: release

build:
	docker build -t $(NAME) .

release: build
	git tag "v$(1)"
	git push
	git push origin --tags
	docker tag $(NAME) $(NAME):$(v)
	docker tag $(NAME) $(NAME):latest
	docker push $(NAME):$(v)
	docker push $(NAME):latest
