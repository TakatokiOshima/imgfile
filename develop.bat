git add .
git diff head
git reset %~dp0%develop.txt
git diff head

Pause
exit

git branch --contains >> qwertyuioplkhgfdsazxcvbnm.txt
set /p branchName= <qwertyuioplkhgfdsazxcvbnm.txt
del qwertyuioplkhgfdsazxcvbnm.txt

set commitMessage=
echo [    please commit message.   ]
echo [    don't include ".         ]
set /p commitMessage="---->"

echo on
git add .
git commit -a -m "%commitMessage%"
git push origin %branchName:~2%
Pause
