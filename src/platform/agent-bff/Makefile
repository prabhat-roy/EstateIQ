.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/agent-bff .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/agent-bff:latest .

docker-run:
	docker run --rm -p 50001:50001 --env-file .env estateiq/agent-bff:latest
