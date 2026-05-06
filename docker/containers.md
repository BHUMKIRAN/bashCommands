# Docker Container Commands

## List

```bash
docker ps
docker ps -a
```

## Manage

```bash
docker start container_name
docker stop container_name
docker restart container_name
docker rm container_name
docker rm -f container_name
```

## Logs and Shell

```bash
docker logs container_name
docker logs -f container_name
docker exec -it container_name bash
docker exec -it container_name sh
```

## Inspect

```bash
docker inspect container_name
docker stats
docker top container_name
```

## Inside Docker-Container

```bash
docker exec -it mysql mysql -u root -p
docker exec -it redis bash
docker exec -it mongo mongosh
docker exec -it mongo mongosh -u root -p --authenticationDatabase admin
```

