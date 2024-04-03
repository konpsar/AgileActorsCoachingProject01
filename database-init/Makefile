build_n_start:
	docker build -t pgres-image .
	docker run -d --name my-pgres-cont --env-file .env.db.dev pgres-image

build_without_image:
	source .env.db.dev && docker run -d --name my-pgres-cont2 --env-file .env.db.dev -p $(POSTGRES_PORT):5432 postgres:latest


stop:
	docker stop my-pgres-cont
	docker rm my-pgres-cont
	docker stop my-pgres-cont2
	docker rm my-pgres-cont2

stop_n_clear:
	docker stop my-pgres-cont
	docker rm my-pgres-cont
	docker rmi pgres-image
	docker stop my-pgres-cont2
	docker rm my-pgres-cont2

.PHONY: build_n_start stop stop_n_clear build_without_image
