time=$(date "+%Y%m%d%H%M%S")
echo "${time}" > ver
git config --local user.email 41898282+github-actions[bot]@users.noreply.github.com
git config --local user.name "github-actions[bot]"
git add ver
#git commit -m ${time} --allow-empty --author="github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>"
git commit -m ${time}
#git tag v${time}
#git push origin --tags
git push
git tag "v$env:GitVersion_SemVer"
git push origin "v$env:GitVersion_SemVer"
