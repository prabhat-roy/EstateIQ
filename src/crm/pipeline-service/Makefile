.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/pipeline-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/pipeline-service:latest .

docker-run:
	docker run --rm -p 50182:50182 --env-file .env estateiq/pipeline-service:latest
