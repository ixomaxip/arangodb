

build:
	docker $@ -t $(IMG) -f ci/ci.dockerfile ci