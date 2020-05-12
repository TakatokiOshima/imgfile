echo off

git branch --contains >> log.txt
set /p branchName= <log.txt
del log.txt

set commitMessage=
echo [    please commit message.   ]
echo [    don't include ".         ]
set /p commitMessage="---->"

echo on
git add .
git commit -a -m "%commitMessage"
git push origin %branchName:~2%
Pause
