build_n_start:
	docker build -t pgres-image .
	docker run -d --name my-pgres-cont --env-file .env.db.dev pgres-image

build_without_image:
	source .env.db.dev && docker run -d --name my-pgres-cont2 --env-file ./.env.db.dev -p $(POSTGRES_PORT):5432 postgres:latest

build_w_migrations:
	docker run -d \
		--name mypostgres \
		-v ./migrations:/docker-entrypoint-initdb.d \
		--env-file ./.env.db.dev \
		-p 5432:5432 \
		postgres:latest

stop:
	docker stop my-pgres-cont || true
	docker rm my-pgres-cont || true
	docker stop my-pgres-cont2 || true
	docker rm my-pgres-cont2 || true
	docker stop mypostgres || true
	docker rm mypostgres || true

stop_n_clear:
	docker stop my-pgres-cont || true
	docker rm my-pgres-cont || true
	docker rmi pgres-image || true
	docker stop my-pgres-cont2 || true
	docker rm my-pgres-cont2 || true
	docker stop mypostgres || true
	docker rm mypostgres || true

.PHONY: build_n_start stop stop_n_clear build_without_image
