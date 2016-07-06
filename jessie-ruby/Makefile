NAME=deric/jessie-ruby
all: release

build:
	docker build -t $(NAME) .

release: build
	docker tag $(NAME):$(v)
	docker push
