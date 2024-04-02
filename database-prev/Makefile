# Define variables
CONTAINER_NAME = my_postgres_container

# Docker Compose targets
	
docker_up:
	docker-compose build
    docker-compose up -d

docker_down:
	docker-compose down

docker_clean: docker_down
	docker-compose rm -f
	docker volume prune -f

# Pyway targets
pyway_check:
	pyway check

pyway_migrate:
	pyway migrate

# Combined target to deploy and update
deploy_and_update: docker_up pyway_info pyway_migrate

.PHONY: docker_up docker_down docker_clean pyway_check pyway_migrate deploy_and_update
