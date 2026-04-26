.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/aml-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/aml-service:latest .

docker-run:
	docker run --rm -p 50220:50220 --env-file .env estateiq/aml-service:latest
