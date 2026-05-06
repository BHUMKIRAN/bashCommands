# Git Basic Commands

## Setup

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --list
```

## Repository

```bash
git init
git clone https://github.com/user/repo.git
git status
git add file.txt
git add .
git commit -m "Message"
git log
git log --oneline
```

## Remote

```bash
git remote -v
git remote add origin https://github.com/user/repo.git
git push -u origin main
git pull
git fetch
```

## Differences

```bash
git diff
git diff --staged
git show commit_hash
```

