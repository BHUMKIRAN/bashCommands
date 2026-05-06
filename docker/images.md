# Docker Image Commands

## List and Pull

```bash
docker images
docker pull nginx
docker pull mysql:8
```

## Build

```bash
docker build -t app-name .
docker build -t username/app-name:tag .
```

## Tag and Push

```bash
docker tag app-name username/app-name:latest
docker login
docker push username/app-name:latest
```

## Remove

```bash
docker rmi image_name
docker image prune
```

