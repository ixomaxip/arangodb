

D=docker-compose

.PHONY: ci
ci:
	$D build $@
down push pull ps logs build:
	$D $@
run-ci:
	$D ci
log:
	$D logs -f ci