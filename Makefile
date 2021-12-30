build-dev-env:
	docker build -t pocs:latest -f ./docker/Dockerfile .

start-dev-env:
	docker run --rm -it -v $(PWD)/src/panoptes:/usr/src/app/panoptes -v $(PWD)/tests:/usr/src/app/tests pocs:latest
