# Cloudflare Commands

Cloudflare provides DNS, CDN, security, and tunneling tools. `cloudflared` is the command-line tool used for Cloudflare Tunnel, which can expose a localhost app to the internet without opening router ports.

## Definitions

- `cloudflared` - CLI agent that connects your machine or server to Cloudflare.
- Quick tunnel - Temporary public URL for local development.
- Named tunnel - Reusable tunnel connected to your Cloudflare account and domain.
- Public hostname - Domain or subdomain that routes traffic to a tunnel.
- Origin service - Local app or server that receives the traffic, such as `http://localhost:3000`.

## Install and Check

```bash
cloudflared version
cloudflared help
cloudflared tunnel help
```

## Quick Localhost Tunnel

Expose a local app running on port `3000`.

```bash
cloudflared tunnel --url http://localhost:3000
```

Expose a local Nginx site running on port `80`.

```bash
cloudflared tunnel --url http://localhost:80
```

Expose a local Vite app.

```bash
npm run dev -- --host 0.0.0.0
pnpm dev --host 0.0.0.0
cloudflared tunnel --url http://localhost:5173
```

Quick tunnels create a temporary `trycloudflare.com` URL. Use them for demos and testing, not production.

## Login and Named Tunnel

```bash
cloudflared tunnel login
cloudflared tunnel create my-app
cloudflared tunnel list
cloudflared tunnel info my-app
```

## Route Domain to Tunnel

```bash
cloudflared tunnel route dns my-app app.example.com
cloudflared tunnel run my-app
```

## Local Config File

Default config path:

```bash
mkdir -p ~/.cloudflared
nano ~/.cloudflared/config.yml
```

Example config:

```yaml
tunnel: my-app
credentials-file: /home/user/.cloudflared/TUNNEL_ID.json

ingress:
  - hostname: app.example.com
    service: http://localhost:3000
  - service: http_status:404
```

Run with config:

```bash
cloudflared tunnel --config ~/.cloudflared/config.yml run my-app
```

## Run as Service

```bash
sudo cloudflared service install
sudo systemctl status cloudflared
sudo systemctl restart cloudflared
sudo systemctl stop cloudflared
sudo journalctl -u cloudflared -f
```

For token-based tunnels from the Cloudflare dashboard:

```bash
sudo cloudflared service install <TUNNEL_TOKEN>
cloudflared tunnel run --token <TUNNEL_TOKEN>
```

## Docker

```bash
docker run cloudflare/cloudflared:latest tunnel --no-autoupdate --url http://host.docker.internal:3000
docker run cloudflare/cloudflared:latest tunnel --no-autoupdate run --token <TUNNEL_TOKEN>
```

## Useful Commands

```bash
cloudflared tunnel list
cloudflared tunnel info my-app
cloudflared tunnel delete my-app
cloudflared update
cloudflared version
```

## Localhost Checklist

- Start your app first, for example `npm run dev` or `pnpm dev`.
- Confirm it works locally with `curl http://localhost:3000`.
- Run `cloudflared tunnel --url http://localhost:3000`.
- Open the generated public URL.
- For production, use a named tunnel and a real hostname.
