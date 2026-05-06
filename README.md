# Bash Commands Reference

A categorized command reference for day-to-day development, system administration, databases, containers, frontend, backend, and troubleshooting.

## Folder and File Definitions

- `README.md` - Main index for the command reference. Start here when you want to find a topic quickly.
- `os-commands/` - Operating system commands for Linux and Windows shells.
- `dev-tools/` - Developer tooling notes, such as package managers and language runtimes.
- `frontend/` - Commands for frontend projects like React, Vite, Next.js, and Tailwind CSS.
- `backend/` - Server-side project commands, including Node.js and Express setup.
- `databases/` - Database commands and query examples for MongoDB, MySQL, and related tools.
- `cache/` - Cache server commands for Redis and Memcached.
- `docker/` - Docker image, container, and Compose commands.
- `git/` - Git basics, branching, and troubleshooting commands.
- `devops/` - Server, deployment, DNS, tunneling, and orchestration notes such as Nginx, Cloudflare, and Kubernetes.
- `misc/` - Small reusable snippets, shortcuts, and one-off commands.
- Markdown files like `frontend/react.md` - Topic-specific cheat sheets with definitions, setup commands, and common workflows.

## Command Style

For JavaScript projects, examples usually show both `npm` and `pnpm`:

```bash
npm install package-name
pnpm add package-name

npm run dev
pnpm dev
```

Use one package manager per project so the lockfile stays consistent. If a project has `pnpm-lock.yaml`, use `pnpm`; if it has `package-lock.json`, use `npm`.

## Categories

- [OS Commands](#os-commands)
- [Development Tools](#development-tools)
- [Frontend](#frontend)
- [Backend](#backend)
- [Databases](#databases)
- [Cache](#cache)
- [Docker](#docker)
- [Git](#git)
- [DevOps](#devops)
- [Misc](#misc)

## OS Commands

- [Linux File System](os-commands/linux/file-system.md)
- [Linux Process](os-commands/linux/process.md)
- [Linux Networking](os-commands/linux/networking.md)
- [Linux Permissions](os-commands/linux/permissions.md)
- [Windows CMD](os-commands/windows/cmd.md)
- [Windows PowerShell](os-commands/windows/powershell.md)

## Development Tools

- [Node Package Managers: npm, pnpm, yarn](dev-tools/node-package-managers.md)
- [Python](dev-tools/python.md)

## Frontend

- [React](frontend/react.md)
- [Vite](frontend/vite.md)
- [Next.js](frontend/nextjs.md)
- [Tailwind CSS](frontend/tailwind.md)

## Backend

- [Node.js and Express](backend/node-express.md)

## Databases

- [MySQL Basics](databases/mysql/basics.md)
- [MySQL Queries](databases/mysql/queries.md)
- [MySQL Users and Permissions](databases/mysql/users-permissions.md)
- [MongoDB Basics](databases/mongodb/basics.md)
- [MongoDB Queries](databases/mongodb/queries.md)
- [MongoDB Aggregation](databases/mongodb/aggregation.md)

## Cache

- [Redis](cache/redis/basics.md)
- [Memcached](cache/memcached/basics.md)

## Docker

- [Docker Basics](docker/basics.md)
- [Docker Containers](docker/containers.md)
- [Docker Images](docker/images.md)
- [Docker Compose](docker/docker-compose.md)

## Git

- [Git Basics](git/basics.md)
- [Git Branching](git/branching.md)
- [Git Troubleshooting](git/troubleshooting.md)

## DevOps

- [Cloudflare](devops/cloudflare/basics.md)
- [Kubernetes](devops/kubernetes/basics.md)
- [Nginx](devops/nginx/basics.md)

## Misc

- [Shortcuts](misc/shortcuts.md)
- [Useful Snippets](misc/useful-snippets.md)
