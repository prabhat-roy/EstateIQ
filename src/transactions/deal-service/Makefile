.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/deal-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/deal-service:latest .

docker-run:
	docker run --rm -p 50060:50060 --env-file .env estateiq/deal-service:latest
