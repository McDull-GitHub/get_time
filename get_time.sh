time=$(date "+%Y%m%d%H%M%S")
echo "${time}" > ver
git config --global user.email github@github.com
git config --global user.name github
git add ver
git commit -m ${time}
git tag v${time}
git push origin --tags
