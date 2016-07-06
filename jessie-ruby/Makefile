NAME=deric/jessie-ruby
all: release

build:
	docker build -t $(NAME) .

release: build
	docker tag $(NAME) $(NAME):$(v)
	docker push $(NAME):$(v)
