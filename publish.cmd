@echo off
hugo -t anybodyhome
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
echo %mydate%_%mytime%
SET TIME=%mydate%_%mytime%_post
git add .
git commit -m TIME
git push -u origin main
cmd
