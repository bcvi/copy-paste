# Git

# https://git-scm.com/docs



git push origin refs/heads/master

git pull --rebase
git pull

git branch bcvi/JIRA-ticket001
git branch -a
git branch -d bcvi/JIRA-ticket001
git branch -D bcvi/JIRA-ticket001

git checkout master
git checkout bcvi/JIRA-ticket001

git fetch -a
git fetch -p
git fetch origin --prune

git remote prune origin
git remote show origin

git diff bcvi/JIRA-ticket001
git log -1
git status

# e.g. 1
# feature branch -> make change -> push to remote
git branch bcvi/JIRA-ticket001
git add .
git commit -m "aba aba"
git push -u origin bcvi/JIRA-ticket001

# e.g. 2
# merge master into branch (master will change)
git checkout master
git pull
git checkout bcvi/JIRA-ticket001
git merge master
git push

# e.g. 3
# merge master into branch (master won't change)
git checkout bcvi/JIRA-ticket001
git merge master
git push

# e.g. 4
# save changes in a branch -> go to another branch -> go back to continue our work
git stash
git stash push 
    # git stash push -m "aba aba"
git stash list
git stash pop
    # git stash pop stash@{0}
