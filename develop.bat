echo off
set /p branchName= < branch.txt
set commitMessage=
echo [    please commit message.   ]
echo [    don't include ".         ]
set /p commitMessage="---->"
echo %branchName%
echo %commitMessage%

echo on
git add .
git commit -a -m "%commitMessage"
git push origin %branchName%
Pause
