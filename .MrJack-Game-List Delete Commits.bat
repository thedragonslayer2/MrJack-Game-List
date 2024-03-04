@ECHO OFF

:choice
set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice

:somewhere
echo %~dp0
git checkout --orphan new_branch
git add .
git commit -m "new"
git branch -D main
git branch -m main
git push -f origin main
exit

:somewhere_else
exit