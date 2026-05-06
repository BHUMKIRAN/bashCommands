# Linux Networking Commands

## IP and Interfaces

```bash
ip addr
ip route
hostname -I
ifconfig
```

## Test Connectivity

```bash
ping google.com
ping -c 4 google.com
traceroute google.com
mtr google.com
```

## DNS

```bash
nslookup example.com
dig example.com
dig example.com A
dig example.com MX
host example.com
```

## Ports and Sockets

```bash
ss -tulpen
ss -ltnp
netstat -tulpen
lsof -i :80
```

## HTTP Requests

```bash
curl https://example.com
curl -I https://example.com
curl -X POST https://api.example.com -H "Content-Type: application/json" -d '{"name":"test"}'
wget https://example.com/file.zip
```

## Firewall

```bash
sudo ufw status
sudo ufw allow 22
sudo ufw allow 80/tcp
sudo ufw deny 3306
sudo ufw enable
sudo ufw disable
```

