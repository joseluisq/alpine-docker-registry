# Alpine / Docker Registry [![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/joseluisq/alpine-docker-registry.svg)](https://hub.docker.com/r/joseluisq/alpine-docker-registry)

> [Alpine](https://hub.docker.com/_/alpine/) and [Docker Registry v2](https://hub.docker.com/_/registry) x86_64 image.

## Overview

This image contain [Docker Registry v2](https://github.com/docker/distribution-library-image) binary in the top of [Alpine](https://hub.docker.com/_/alpine/) x86_64.

## Usage

```sh
docker run --rm -it joseluisq/alpine-docker-registry:latest
```

### Dockerfile

You can also use the image as a base for your own Dockerfile:

```Dockerfile
FROM joseluisq/alpine-docker-registry:latest
```

### Docker Compose

Below an example using `docker-registry` as a service:

```yml

```

## Configuration

Read to the official documentation at https://docs.docker.com/registry/configuration/

## Contributions

Feel free to send some [Pull request](https://github.com/joseluisq/alpine-docker-registry/pulls) or [issue](https://github.com/joseluisq/alpine-docker-registry/issues).

## License
MIT license

© 2019 [Jose Quintana](https://git.io/joseluisq)
