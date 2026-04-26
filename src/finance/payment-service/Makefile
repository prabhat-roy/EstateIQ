.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/payment-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/payment-service:latest .

docker-run:
	docker run --rm -p 50200:50200 --env-file .env estateiq/payment-service:latest
