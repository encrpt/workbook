## Advanced

```bash
# Viewing stash diffs
git stash show -p

# Creating a branch from your stash

# If the changes on your branch diverge from the changes in your stash, you may run into conflicts when popping or applying your stash. Instead, you can use git stash branch to create a new branch to apply your stashed changes to:

git stash list
git stash branch ~branch_name~ stash@{1}

# Patch
# create
git format-patch -1 HEAD
git format-patch -1 --sha--

# apply
git am < file.patch

# current local branch is ahead/behind
git status -sb

# remove any remote-tracking references that no longer exist on the remote (prune)
git fetch -p

# rename local branch
git branch -m ....

# checkout new branch from origin
git checkout --track origin/develop
git fetch
git pull

# undo merge (part of pull)
git reset --hard HEAD
# or
git reset --hard master@{"10 minutes ago"}
# or
git reset --hard master@{1}

# deleted files
git diff --base
git rm __path/to/file__

# commmit
git commit --no-verify
```
