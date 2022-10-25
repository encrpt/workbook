## subtree

```bash
# change this values for your environment
SUBTREE_REMOTE_URL=**repository_url**.git
SUBTREE_REMOTE_NAME=modules
SUBTREE_REPO_BRANCHNAME=master
SRC_DIR_NAME=core-modules

# create a directory for code from repository in your src directory
md $SRC_DIR_NAME

# add remote repository and configure subtree
git remote add  $SUBTREE_REMOTE_NAME $SUBTREE_REMOTE_URL
git subtree add --prefix=$SRC_DIR_NAME $SUBTREE_REMOTE_NAME $SUBTREE_REPO_BRANCHNAME
# use –squash to not store the entire history of the subproject


# pull
git subtree pull --prefix=$SRC_DIR_NAME $SUBTREE_REMOTE_NAME $SUBTREE_REPO_BRANCHNAME
# example: git subtree pull --prefix=src/core-modules modules master

# push
git subtree push --prefix=$SRC_DIR_NAME $SUBTREE_REMOTE_NAME $SUBTREE_REPO_BRANCHNAME
# git subtree push --prefix=src/core-modules modules master

```

## add upstream

- check using use flag: --allow-unrelated-histories

```bash
# add
git remote add upstream **repo_url**.git
git remote show origin
# disable push
git remote set-url --push upstream no_push

get fetch upstream
```

### update upstream

```bash
# feature-branch commit/push
git add .
git commit -m "message"
git push origin **branchname**

# checkout develop
git checkout origin/develop
git pull origin develop

# update upstream develop
git pull upstream develop

# solve conflicts
git add .
git commit
git push origin develop

# create MR/PR for feature-branch
# DONE ... or if conflicts
git checkout **branchname**
git merge develop
# solve conflicts
git add .
git commit
git push origin **branchname**

# Merge MR/PR
```
