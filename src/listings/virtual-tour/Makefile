.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/virtual-tour .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/virtual-tour:latest .

docker-run:
	docker run --rm -p 50043:50043 --env-file .env estateiq/virtual-tour:latest
