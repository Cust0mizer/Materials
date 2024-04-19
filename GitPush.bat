$commitMessage = Read-Host -Prompt 'Enter a comment for the commit'
git add --all
git commit -m $commitMessage
git push
