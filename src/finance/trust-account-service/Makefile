.PHONY: build test run package docker-build
build:   ; mvn -B compile
test:    ; mvn -B test
run:     ; mvn -B spring-boot:run
package: ; mvn -B package -DskipTests
docker-build: package ; docker build -t estateiq/trust-account-service:latest .
docker-run: ; docker run --rm -p 50224:50224 --env-file .env estateiq/trust-account-service:latest
