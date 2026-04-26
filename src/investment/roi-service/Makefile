.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/roi-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/roi-service:latest .

docker-run:
	docker run --rm -p 50162:50162 --env-file .env estateiq/roi-service:latest
