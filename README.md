# xv6-docker

## Prerequisites
* [Docker](https://docs.docker.com/install/) - Docker latest version

## Building
Clone the repo
build the image
```bash
docker build -t xv6-docker .
```

## Running
```bash
docker run --rm -it xv6-docker bash
```

## inside the container
```bash
make
```

run xv6 without the VGA console.

```bash
make qemu-nox
```
