.PHONY: install run test lint docker-build

install:
	pip install -r requirements.txt

run:
	python main.py

test:
	python -m pytest

lint:
	ruff check .

docker-build:
	docker build -t estateiq/price-prediction:latest .

docker-run:
	docker run --rm -p 50281:50281 --env-file .env estateiq/price-prediction:latest
