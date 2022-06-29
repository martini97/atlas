build:
	docker-compose build

stop:
	docker-compose down

run: stop root-config/node_modules
	docker-compose up

root-config/node_modules:
	yarn --cwd ./root-config/
