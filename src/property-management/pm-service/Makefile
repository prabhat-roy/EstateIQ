.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/pm-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/pm-service:latest .

docker-run:
	docker run --rm -p 50100:50100 --env-file .env estateiq/pm-service:latest
