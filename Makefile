

default:
	@echo Please check makefile

deploy:
	docker stack deploy traefik -c docker-stack.yml

clean:
	docker stack rm traefik

network:
	if ! docker network ls | grep proxy-net; then \
		docker network create --attachable -d overlay proxy-net; \
	fi

