# Useful Snippets

## Make Script Executable

```bash
chmod +x script.sh
./script.sh
```

## Find and Kill Process on Port

```bash
lsof -i :3000
kill -9 PID
```

## Create .env File

```bash
touch .env
echo "PORT=3000" >> .env
echo "DATABASE_URL=mysql://user:password@localhost:3306/app_db" >> .env
```

## Check Public IP

```bash
curl ifconfig.me
curl https://api.ipify.org
```

## Generate Random Password

```bash
openssl rand -base64 32
```

## Serve Current Folder

```bash
python3 -m http.server 8000
npx serve .
pnpm dlx serve .
```

## Common Ports

```text
22    SSH
80    HTTP
443   HTTPS
3000  Node/React dev
3306  MySQL
5432  PostgreSQL
6379  Redis
27017 MongoDB
```
