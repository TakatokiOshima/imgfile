
echo off
set commitMessage=
echo [    please commit message    ]
echo [    do not include "         ]
set /P commitMessage="> "
set branch= < branch.txt
set imgName=test2

echo on
git add .
git commit -a -m "%commitMessage%"
git push origin %branch%
Pause
