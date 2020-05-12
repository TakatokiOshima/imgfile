echo off
git branch >> log.txt
set /p branchName= < branch.txt
set commitMessage=
echo [    please commit message.   ]
echo [    don't include ".         ]
set /p commitMessage="---->"
echo %branchName%
echo %commitMessage%
git add .
git commit -a -m "%commitMessage"
for /f "delims=* tokens=1,2" %%a in (log.txt) do git push origin %%a
del log.txt
echo on
echo completed.
