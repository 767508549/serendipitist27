@echo off
hugo -t anybodyhome
SET DATE=%date%
echo DATE
git add .
git commit -m DATE
git push -u origin main
pause
