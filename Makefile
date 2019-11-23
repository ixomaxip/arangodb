include .env
include ci/main.make

V=-v `pwd`/data/db:/var/lib/arangodb3 \
-v `pwd`/data/apps:/var/lib/arangodb3-apps

run-i:
	docker run --rm -ti \
	-e ARANGO_RANDOM_ROOT_PASSWORD=1 \
	--name arangodb-instance \
	$V \
	-p 8529:8529 \
	$(IMG)

sh:
	docker run --rm -ti --name arangodb-debug $(IMG) sh