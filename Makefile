.PHONY: up down ps master-login minion-1-login minion-2-login

up:
	docker-compose up

down:
	docker-compose down

ps:
	docker-compose ps

master-login:
	docker-compose exec salt-master bash

minion-1-login:
	docker-compose exec --index=1 salt-minion bash

minion-2-login:
	docker-compose exec --index=2 salt-minion bash
