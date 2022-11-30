all: build

build:
	docker build . -f ./support/docker/production/Dockerfile.bullseye -t prv.docker.dw/chocobozzz/peertube:5

	docker tag prv.docker.dw/chocobozzz/peertube:5 prv.docker.dw/chocobozzz/peertube:latest

push:
	docker push prv.docker.dw/chocobozzz/peertube:5
	docker push prv.docker.dw/chocobozzz/peertube:latest

clean:
	@docker image rm prv.docker.dw/chocobozzz/peertube:5        2> /dev/null || true
	@docker image rm prv.docker.dw/chocobozzz/peertube:latest   2> /dev/null || true
