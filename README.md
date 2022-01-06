# Python Docker Flow Example Project

This application is meant to show off a nice workflow for doing development of a python app using docker.The source code is in `src/` and the tests are in `tests/`. There are make commands that will build and start a development environment with all the specified pip packages installed. The src and tests directories are mapped into the container as volumes, so you can edit files with the IDE of your choice and the updated python code will be available in the container for running tests or a python shell.

## Development Environment Setup

### Required Tools

- Docker

Docker is used to create an isolated environment on your development machine with all the tools and source code of the project installed. What docker is and how to install it are beyond the scope of this document. You can learn more about it [here]().

- Make

Make is used to encapsulate the terminal commands for setting up and running the environment. You can learn more about it [here]().

## Start The Development Environment
The following make command will build the docker container and start the container. This is running the `build-dev-env` and `run-dev-env` make tasks sequentially.
Your terminal will be started inside the container in the directory where the source code is mapped.
```
$ make start-dev-env
```

## Only Build Development Environment
The following make command will create a docker image with the prerequisites for the POCS source code installed. The image name is `pocs` and the tag is `latest`

```
$ make build-dev-env
```

## Running The Development Environment
The following make command will run the docker container with your local src/ and tests/ folders mapped into the container as volumes.
You will be able to make updates to the local copy of the code and they will be reflected in the container.

```
$ make run-dev-env
```

## Run Tests

### Single Test Run
```
$ make start-dev-env
$ python -m pytest
```

### File Watcher Test Run (will re-run on detected changes to source files, test files, and new tests)
```
$ make start-develop-env
$ ptw
```

## Creating a Pull Request (PR)

This project is managed by a distributed team of contributors. In order to make it as easy as possible to contribute, you should open a github issue describing your problem or enhancement before opening a PR. This will make the other contributors aware of the work you are doing and will make it easier to collaborate.

1. Fork the repository
2. Clone the repository to your development machine
3. Set the upstream to the source repository
4. Create a branch e.g. `my-feature-branch`
5. Make commits to the branch to implement the bugfix or enhancement. Add tests if appropriate.
6. Before pushing to your branch make sure all tests pass (see `Run Tests` section)
7. After pushing. Create a PR back to the `main` branch of the source repository.

## Creating a Release

TODO

