DEFAULT_GOAL: go

.PHONY: go
go: down start

.PHONY: build
build: down rebuild start

.PHONY: down
down:
	docker-compose down --remove-orphans

.PHONY: rebuild
rebuild:
	docker-compose build

.PHONY: start
start:
	docker-compose up -d

.PHONY: logs
logs:
	docker-compose logs -f --tail=100

.PHONY: shell
shell:
	docker exec -it trainer bash
