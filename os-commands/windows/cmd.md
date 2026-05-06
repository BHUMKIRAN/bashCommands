# Windows CMD Commands

## Navigation

```bat
cd
dir
cd C:\path\to\folder
cd ..
cls
```

## Files and Folders

```bat
type file.txt
copy file.txt backup.txt
xcopy folder folder-copy /E /I
move file.txt C:\Temp
ren old.txt new.txt
del file.txt
rmdir folder
rmdir /S /Q folder
mkdir folder
```

## System Info

```bat
whoami
hostname
systeminfo
ipconfig
ipconfig /all
tasklist
taskkill /PID 1234 /F
```

## Networking

```bat
ping example.com
tracert example.com
nslookup example.com
netstat -ano
```

## Environment Variables

```bat
set
set NODE_ENV=development
echo %PATH%
```

