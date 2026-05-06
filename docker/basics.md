# Docker Basic Commands

## Info

```bash
docker --version
docker info
docker system df
```

## Run Containers

```bash
docker run hello-world
docker run -it ubuntu bash
docker run -d -p 8080:80 nginx
docker run --name my-nginx -d nginx
```

## Cleanup

```bash
docker system prune
docker system prune -a
docker volume prune
docker network prune
```

