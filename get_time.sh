time=$(date "+%Y%m%d%H%M%S")
echo "${time}"
git tag ${time}
git push
