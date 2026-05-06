# Docker Compose Commands

## Start and Stop

```bash
docker compose up
docker compose up -d
docker compose down
docker compose down -v
docker compose restart
```

## Build

```bash
docker compose build
docker compose up --build
docker compose pull
```

## Logs and Exec

```bash
docker compose logs
docker compose logs -f
docker compose logs -f service_name
docker compose exec service_name bash
docker compose exec service_name sh
```

## Services

```bash
docker compose ps
docker compose stop service_name
docker compose start service_name
docker compose restart service_name
```

