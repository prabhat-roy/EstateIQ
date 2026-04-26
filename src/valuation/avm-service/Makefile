.PHONY: build test run package docker-build

build:
	gradle build

test:
	gradle test

run:
	gradle bootRun

package:
	gradle bootJar

docker-build:
	docker build -t estateiq/avm-service:latest .

docker-run:
	docker run --rm -p 50141:50141 --env-file .env estateiq/avm-service:latest
