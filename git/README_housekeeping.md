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


# housekeeping - delete multiple branches in single step, change -d to -D if you are shure
git branch | grep "fix/" | xargs git branch -d
git branch | grep "feature/" | xargs git branch -d
```

## dancing on top of the head

- commit all items reuired for feature/fix
- stash
- test code
- push, create [P|M]R
- stash apply
- ... wait for merged [P|M]R
- stash
- checkout develop/master
- pull
- checkout -b [new feature]
- stash apply
