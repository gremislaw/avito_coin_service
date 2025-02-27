run:
	sudo docker compose up --build -d

install: install_tools
	go mod tidy

test:
	go test -cover ./...
	golangci-lint run

load_test:
	go run load_testing/load_testing.go

docker_up:
	sudo docker compose up -d --build

docker_stop:
	sudo docker compose stop

docker_down:
	sudo docker compose down

format:
	go fmt ./...

generate_sqlc:
	sqlc generate

clean:
	rm -rf ./bin
	rm -rf ./data