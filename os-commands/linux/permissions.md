# Linux Permissions Commands

## View Permissions

```bash
ls -l
stat file.txt
id
groups
whoami
```

## Change Permissions

```bash
chmod 644 file.txt
chmod 755 script.sh
chmod +x script.sh
chmod -R 755 folder
```

## Change Owner and Group

```bash
sudo chown user file.txt
sudo chown user:group file.txt
sudo chown -R user:group folder
sudo chgrp group file.txt
```

## Sudo and Users

```bash
sudo command
sudo -i
sudo su -
sudo useradd username
sudo passwd username
sudo usermod -aG sudo username
sudo deluser username
```

## SSH Keys

```bash
ssh-keygen -t ed25519 -C "email@example.com"
cat ~/.ssh/id_ed25519.pub
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_ed25519
chmod 644 ~/.ssh/id_ed25519.pub
```

