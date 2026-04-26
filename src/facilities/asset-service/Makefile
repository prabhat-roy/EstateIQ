.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/asset-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/asset-service:latest .

docker-run:
	docker run --rm -p 50120:50120 --env-file .env estateiq/asset-service:latest
