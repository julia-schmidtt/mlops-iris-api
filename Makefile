.PHONY: build-api run-api stop-api

build-api:
	docker build -t iris-api:latest -f src/api/Dockerfile .

run-api:
	docker run -d --name iris-api -p 8000:8000 iris-api:latest

stop-api:
	docker stop iris-api || true
	docker rm iris-api || true
