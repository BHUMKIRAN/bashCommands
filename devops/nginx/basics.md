# Nginx Commands

Nginx is a web server and reverse proxy. Use it to serve static files, forward traffic to localhost apps, terminate SSL, and route domains to different services.

## Install

```bash
sudo apt update
sudo apt install nginx
nginx -v
```

## Service

```bash
sudo systemctl status nginx
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl reload nginx
sudo nginx -t
```

## Config Locations

```bash
ls /etc/nginx
ls /etc/nginx/sites-available
ls /etc/nginx/sites-enabled
ls /var/www/html
```

## Enable Site

```bash
sudo ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled/app
sudo nginx -t
sudo systemctl reload nginx
```

## Disable Site

```bash
sudo unlink /etc/nginx/sites-enabled/app
sudo nginx -t
sudo systemctl reload nginx
```

## Localhost Static Site

Serve local files from `/var/www/app` on `http://localhost`.

```bash
sudo mkdir -p /var/www/app
sudo cp -r dist/* /var/www/app/
sudo chown -R www-data:www-data /var/www/app
sudo nano /etc/nginx/sites-available/app
```

Example config:

```nginx
server {
    listen 80;
    server_name localhost;

    root /var/www/app;
    index index.html;

    location / {
        try_files $uri $uri/ /index.html;
    }
}
```

Enable it:

```bash
sudo ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled/app
sudo nginx -t
sudo systemctl reload nginx
curl http://localhost
```

## Localhost Reverse Proxy

Forward Nginx traffic to a local app running on port `3000`.

```bash
sudo nano /etc/nginx/sites-available/app
```

Example config:

```nginx
server {
    listen 80;
    server_name localhost;

    location / {
        proxy_pass http://127.0.0.1:3000;
        proxy_http_version 1.1;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
```

Check it:

```bash
sudo nginx -t
sudo systemctl reload nginx
curl http://localhost
```

## Local Domain Testing

Use a fake local domain like `app.local`.

```bash
sudo nano /etc/hosts
```

Add this line:

```text
127.0.0.1 app.local
```

Use this Nginx value:

```nginx
server_name app.local;
```

Then reload:

```bash
sudo nginx -t
sudo systemctl reload nginx
curl http://app.local
```

## Firewall

```bash
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw allow 'Nginx HTTPS'
sudo ufw status
```

## Logs

```bash
sudo tail -f /var/log/nginx/access.log
sudo tail -f /var/log/nginx/error.log
```

## Troubleshooting

```bash
sudo nginx -t
sudo systemctl status nginx
sudo journalctl -u nginx --no-pager
sudo ss -tulpn | grep ':80'
curl -I http://localhost
```
