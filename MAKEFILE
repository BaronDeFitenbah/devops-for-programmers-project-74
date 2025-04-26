setup: prepare-env install

install:
	docker-compose run --rm app npm ci

start:
	docker-compose up

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

prepare-env:
	cp -n .env.example .env	