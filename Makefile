.PHONY: up
up:
	@if [ ! -e docker/.env ]; then cp docker/.env-example docker/.env; fi
	@if [ ! -e docker/data/logs/php/error.log ]; then touch docker/data/logs/php/error.log; fi
	@if [ ! -e docker/data/logs/nginx/access.log ]; then touch docker/data/logs/nginx/access.log docker/data/logs/nginx/error.log; fi
	docker-compose --env-file ./docker/.env up -d
	docker exec -it docker-php sh /var/www/html/docker/init.sh Development local

.PHONY: down
down:
	docker-compose --env-file ./docker/.env down

.PHONY: build
build:
	docker-compose --env-file ./docker/.env build