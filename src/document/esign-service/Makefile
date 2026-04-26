.PHONY: install run test lint docker-build

install:
	npm install

run:
	npm run dev

test:
	npm test

lint:
	npx eslint .

docker-build:
	docker build -t estateiq/esign-service:latest .

docker-run:
	docker run --rm -p 50301:50301 --env-file .env estateiq/esign-service:latest
