SHELL := /bin/bash
NODE_VERSIONS := 5 4 0.10

test: $(NODE_VERSIONS)

$(NODE_VERSIONS):
	docker run -v ${PWD}:/usr/src/app -w /usr/src/app --rm -e TEST_ENV=docker node:$@ npm test

.PHONY: test