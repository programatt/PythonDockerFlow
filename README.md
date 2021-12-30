# POCS ##
## Panoptes Observatory Control System

### NOTE: This README is targeted at people looking to contribute to the POCS source code. If you are looking to install POCS on a device for a build, please visit [here]() for those instructions.

## Development Environment Setup

### Required Tools

- Docker

Docker is used to create an isolated environment on your development machine with all the tools and source code of the project installed. What docker is and how to install it are beyond the scope of this document. You can learn more about it [here]().

- Make

Make is used to encapsulate the terminal commands for setting up and running the environment. You can learn more about it [here]().

## Build Development Environment
The following make command will create a docker image with the prerequisites for the POCS source code installed. The image name is `pocs` and the tag is `latest`

```
$ make build-dev-env
```

## Run Tests

### Single Test Run
```
$ make start-develop-env
$ python -m pytest
```

### File Watcher Test Run (will re-run on detected changes to files)
```
$ make start-develop-env
$ ptw
```

## Creating a Pull Request (PR)

This project is managed by a distributed team of contributors. In order to make it as easy as possible to contribute, you should open a github issue describing your problem or enhancement before opening a PR. This will make the other contributors aware of the work you are doing and will make it easier to collaborate.

1. Fork the repository
2. Clone the repository to your development machine
3. Set the upstream to the panoptes pocs repository
4. Create a branch e.g. `my-feature-branch`
5. Make commits to the branch to implement the bugfix or enhancement. Add tests if appropriate.
6. Before pushing to your branch make sure all tests pass (see `Run Tests` section)
7. After pushing. Create a PR back to the `develop` branch of the Panoptes POCS repository.

## Creating a Release

