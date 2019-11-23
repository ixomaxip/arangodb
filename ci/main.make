

D=docker-compose

.PHONY: ci
ci:
	$D build $@
down push pull ps logs build:
	$D $@
run-ci:
	$D run --rm ci
up:
	$D $@ -d ci
log:
	$D logs -f ci

I=`docker-compose ps -q`
sh:
	docker exec -it $I sh