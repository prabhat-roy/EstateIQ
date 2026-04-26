.PHONY: build test run lint docker-build
build:   ; cargo build
test:    ; cargo test
run:     ; cargo run
lint:    ; cargo clippy -- -D warnings
release: ; cargo build --release
docker-build: ; docker build -t estateiq/media-service:latest .
docker-run:   ; docker run --rm -p 50042:50042 --env-file .env estateiq/media-service:latest
