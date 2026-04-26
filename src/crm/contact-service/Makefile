.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/contact-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/contact-service:latest .

docker-run:
	docker run --rm -p 50180:50180 --env-file .env estateiq/contact-service:latest
