@echo off
setlocal

REM Store the current branch name
for /f "tokens=*" %%a in ('git symbolic-ref --short HEAD') do set "current_branch=%%a"

REM Stash local changes
git stash save "Temporary Stash"

REM Pull updates from the repository
git pull origin %current_branch%

REM Restore the stashed changes
git stash pop

endlocal