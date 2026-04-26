.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/mls-syndicator .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/mls-syndicator:latest .

docker-run:
	docker run --rm -p 50041:50041 --env-file .env estateiq/mls-syndicator:latest
