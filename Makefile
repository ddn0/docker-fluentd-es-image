TAG=1.17

build: docker.io/ddn0/fluentd-elasticsearch

push: docker.io/ddn0/fluentd-elasticsearch
	docker push $<
	docker push $<:$(TAG)

docker.io/ddn0/fluentd-elasticsearch: Dockerfile
	docker build -t $@ -f $< .
	docker tag $@ $@:$(TAG)

.PHONY:	build push
