TAG_NAME=v2.1.2
git tag -d $TAG_NAME
git push origin :refs/tags/$TAG_NAME
git tag $TAG_NAME
git push
git push --tags
