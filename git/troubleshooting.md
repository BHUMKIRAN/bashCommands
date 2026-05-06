# Git Troubleshooting Commands

## Undo Local Changes

```bash
git restore file.txt
git restore .
git restore --staged file.txt
git commit --amend
```

## Revert Commits

```bash
git revert commit_hash
git reset --soft HEAD~1
git reset --mixed HEAD~1
```

## Conflicts

```bash
git status
git diff
git add resolved-file.txt
git rebase --continue
git merge --continue
git merge --abort
```

## Recover Work

```bash
git reflog
git checkout commit_hash -- file.txt
git fsck --lost-found
```

## Clean Untracked Files

```bash
git clean -n
git clean -fd
```

