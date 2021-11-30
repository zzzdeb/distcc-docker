# docker-distcc
distcc image
base on:
debian 10 (buster)
distcc 3.3

# Requirements

- docker
- docker-compose (optional for convenience)

# Usage:
Edit `NETWORK` in `docker-compose.yml` to your local network, then
```shell
make && make run
```

What it does:
```shell
docker build -t distcc-server:latest --force-rm=true . &&
docker-compose up -d
```

WARNING: it removes old distcc-server:latest image

- distcc log
```shell
docker logs -f distcc-server
```


