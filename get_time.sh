time=$(date "+%Y%m%d%H%M%S")
echo "${time}" > ver
git add ver
git commit -m ${time} --allow-empty --author="github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>"
#git tag v${time}
#git push origin --tags
git push
