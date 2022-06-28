build:
	docker-compose build

stop:
	docker-compose down

run: stop
	docker-compose up
