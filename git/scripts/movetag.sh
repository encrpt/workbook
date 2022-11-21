TAG_NAME=v2.1.2
# delete tag
git tag -d $TAG_NAME
git push origin :refs/tags/$TAG_NAME
# set new
git tag $TAG_NAME
git push
git push --tags
