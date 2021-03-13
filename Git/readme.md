### Config user email & user name
`git config --global user.email "email" ` //Ommit --global for setting only for the current repo

### Connect to remote branch
`git remote add upstream "repo link" ` 
`git push origin "branch name"`

### Creating new branch 
`git checkout -b "branch name"`
`git checkout --orphan "branch name"`  //for creating empty branch

### Check all available branch 
`git branch `

### Push on different branch
`git push --set-upstream origin 'branch name'`

### Clone a single branch
`git clone -b 'branch name'` 

### Merge a branch to master
1. Checkout to master
2. Then `git merge "branch name"`

### Deleting a branch 
`git branch -d "branch name"`  // Locally
`git push origin --delete "branch name" `  //Remote

### Remove files using git
`git rm -rf `


### Unstage any file for not commiting after adding
`git HEAD <filename> `

### Undo Last Git Commit with reset
`$ git reset --soft HEAD~1`
