.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/lease-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/lease-service:latest .

docker-run:
	docker run --rm -p 50080:50080 --env-file .env estateiq/lease-service:latest
