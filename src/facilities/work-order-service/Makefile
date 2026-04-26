.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/work-order-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/work-order-service:latest .

docker-run:
	docker run --rm -p 50121:50121 --env-file .env estateiq/work-order-service:latest
