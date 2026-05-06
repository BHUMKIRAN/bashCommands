# Linux Process Commands

## View Processes

```bash
ps
ps aux
top
htop
pgrep node
pidof nginx
```

## Kill Processes

```bash
kill PID
kill -9 PID
pkill node
killall node
```

## Background Jobs

```bash
command &
jobs
fg
bg
nohup command &
disown
```

## Services

```bash
systemctl status nginx
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl enable nginx
sudo systemctl disable nginx
journalctl -u nginx
journalctl -u nginx -f
```

## Resource Usage

```bash
free -h
uptime
vmstat
iostat
lsof
lsof -i :3000
```

