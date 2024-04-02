build_n_start:
	docker build -t pgres-image .
	docker run -d --name my-pgres-cont --env-file .env.db.dev pgres-image

stop:
	docker stop my-pgres-cont
	docker rm my-pgres-cont

stop_n_clear:
	docker stop my-pgres-cont
	docker rm my-pgres-cont
	docker rmi pgres-image

.PHONY: build_n_start stop stop_n_clear
