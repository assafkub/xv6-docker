# xv6-docker

## Building
Clone the repo
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
