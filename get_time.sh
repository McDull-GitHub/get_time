time=$(date "+%Y%m%d%H%M%S")
echo "${time}" > ver
git add ver
git commit -m ${time}
git tag v${time}
git push origin --tags
