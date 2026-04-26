.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/market-analytics .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/market-analytics:latest .

docker-run:
	docker run --rm -p 50260:50260 --env-file .env estateiq/market-analytics:latest
