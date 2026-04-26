.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/closing-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/closing-service:latest .

docker-run:
	docker run --rm -p 50064:50064 --env-file .env estateiq/closing-service:latest
