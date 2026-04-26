.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/offer-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/offer-service:latest .

docker-run:
	docker run --rm -p 50061:50061 --env-file .env estateiq/offer-service:latest
