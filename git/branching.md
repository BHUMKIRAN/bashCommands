# Git Branching Commands

## Branches

```bash
git branch
git branch -a
git branch feature/login
git switch feature/login
git switch -c feature/login
git checkout -b feature/login
```

## Merge and Rebase

```bash
git merge feature/login
git rebase main
git rebase --continue
git rebase --abort
```

## Delete Branches

```bash
git branch -d feature/login
git branch -D feature/login
git push origin --delete feature/login
```

## Stash

```bash
git stash
git stash push -m "work in progress"
git stash list
git stash pop
git stash apply
git stash drop
```

