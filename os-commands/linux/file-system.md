# Linux File System Commands

## Navigation

```bash
pwd
ls
ls -la
ls -lh
ls -R
cd /path/to/folder
cd ..
cd ~
cd -
```

## Create Files and Folders

```bash
touch file.txt
mkdir folder
mkdir -p parent/child/grandchild
```

## Copy, Move, Rename, Delete

```bash
cp file.txt backup.txt
cp -r folder folder-copy
mv old.txt new.txt
mv file.txt /tmp/
rm file.txt
rm -i file.txt
rm -r folder
rm -rf folder
```

## Read Files

```bash
cat file.txt
less file.txt
head file.txt
head -n 20 file.txt
tail file.txt
tail -n 50 file.txt
tail -f app.log
```

## Search Files and Text

```bash
find . -name "*.js"
find /var/log -type f -name "*.log"
find . -type f -size +100M
grep "text" file.txt
grep -R "text" .
grep -Ri "text" .
rg "text"
rg --files
```

## File Size and Disk Usage

```bash
du -sh folder
du -h --max-depth=1
df -h
lsblk
```

## Archive and Compress

```bash
tar -czf archive.tar.gz folder
tar -xzf archive.tar.gz
zip -r archive.zip folder
unzip archive.zip
gzip file.txt
gunzip file.txt.gz
```

## Links

```bash
ln file.txt hard-link.txt
ln -s /real/path shortcut
readlink shortcut
```

