TAG ?= "1.10.6-3"

build:
	docker build -t robhoot/docker-airflow:$(TAG) .

push:
	docker push robhoot/docker-airflow:$(TAG)
