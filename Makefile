DOCKER_COMPOSE = docker-compose

# Docker
build:
	@$(DOCKER_COMPOSE) build
up:
	@$(DOCKER_COMPOSE) up
bup:
	@$(DOCKER_COMPOSE) up --build
stop:
	@$(DOCKER_COMPOSE) stop
re:
	@$(DOCKER_COMPOSE) stop
	@$(DOCKER_COMPOSE) start

# Migration
migrate:
	@$(DOCKER_COMPOSE) run web rails db:migrate
seed:
	@$(DOCKER_COMPOSE) run web rails db:seed