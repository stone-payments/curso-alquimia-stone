.PHONY: up
up: down
	docker-compose up -d

.PHONY: down
down:
	docker-compose down -v

.PHONY: os-deps
os-deps:
	sudo apt install erlang-inets erlang-os-mon erlang-runtime-tools erlang-ssl
