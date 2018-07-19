# Dockerfile101

Getting Started [Dockerfile](https://docs.docker.com/engine/reference/builder/#usage) with TDD.

## Usage

- Clone this repository

```shell
$ git clone https://github.com/shufo/dockerfile_101
```

- Install dependencies

  - [Docker](https://docs.docker.com/install/)
  - [container-structure-test](https://github.com/GoogleContainerTools/container-structure-test)

- Write Dockerfile to pass the test

```shell
$ make test
```

- Pull Request the your code

- Test results is shown in here

https://circleci.com/gh/shufo/dockerfile_101

### Windows

If you are using windows, then you can tests in docker container.

```bash
# dockerfile_101
cd dockerfile_101

# run up alpine
docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v ${PWD}:/code -w /code alpine sh

# install dependencies
apk add --update curl vim

# install docker client
VER="17.03.0-ce"
curl -L -o /tmp/docker-$VER.tgz https://get.docker.com/builds/Linux/x86_64/docker-$VER.tgz
tar -xz -C /tmp -f /tmp/docker-$VER.tgz
mv /tmp/docker/* /usr/bin

# install container-structure-test
curl -LO https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64 && chmod +x container-structure-test-linux-amd64 && mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test

# change directory

# Write Dockerfile
vim Dockerfile

# build docker image
docker build -t local/test .

# container-structure-test
container-structure-test test --image local/test --config container_test.yaml
```
