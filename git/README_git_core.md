## Core

```bash
# daily work, only master and develop has an upstream
git checkout -b <branch_name>
git add .
git commit -m "my message"
git push origin <branch_name>
git fetch
git pull
#
git stash
git stash apply

# step back
git reset HEAD~

# f.e. 3 commits on a f.e. protected branch
# - create new branch
git branch feature/<branch_name>
# - still on the original one - 3 commits back
git reset --keep HEAD~3
git clean
git checkout feature/<branch_name>
```

## Housekeeping

```bash
# housekeeping - show commits and existing remotes for all branches
git branch -vv

# housekeeping - local branch history
git for-each-ref --sort=-committerdate refs/heads/ --format='%(committerdate:short) %(authorname) (%(color:green)%(committerdate:relative)%(color:reset)) %(refname)'

# housekeeping - not pushed commits from all branches
git log --branches --not --remotes

# housekeeping - not merged in develop local, for remotes add -r
git branch --no-merged origin/develop # local
git branch -r --no-merged origin/develop # remotes


# housekeeping - delete multiple "fix/" - branches in single step, change -d to -D if you are shure
git branch | grep "fix/" | xargs git branch -d
```

## dancing on top of the head

- commit all items reuired for feature/fix
- stash
- test code
- push, create PR
- stash apply
- ... wait for merged PR
- stash
- checkout develop/master
- pull
- checkout -b [new feature]
- stash apply
