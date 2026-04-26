.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/kyc-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t estateiq/kyc-service:latest .

docker-run:
	docker run --rm -p 50025:50025 --env-file .env estateiq/kyc-service:latest
