deps:
	git submodule update --init --recursive

build: deps
	docker-compose build

stop:
	docker-compose down

run: stop root-config/node_modules theseus/node_modules
	docker-compose up

root-config/node_modules:
	yarn --cwd ./root-config/

theseus/node_modules:
	yarn --cwd ./theseus/
