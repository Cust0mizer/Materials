git add --all
set /p commitMessage=Enter a comment for the commit: 
git commit -m "%commitMessage%"
git push
git status
set /p =Press enter to exit: 