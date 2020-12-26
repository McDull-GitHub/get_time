# time=$(date "+%Y%m%d%H%M%S")
# echo "${time}" > ver
# echo "${time}"
# git config --local user.email 41898282+github-actions[bot]@users.noreply.github.com
# git config --local user.name "github-actions[bot]"
# git add ver
#git commit -m ${time} --allow-empty --author="github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>"
# git commit -m ${time}
#git tag v${time}
#git push origin --tags
# git push
ver_ipfs=v0.7.0

get_ipfs(){
    echo https://github.com/ipfs/go-ipfs/releases/download/${ver_ipfs}/go-ipfs_${ver_ipfs}_linux-amd64.tar.gz
    curl -sL https://github.com/ipfs/go-ipfs/releases/download/${ver_ipfs}/go-ipfs_${ver_ipfs}_linux-amd64.tar.gz -o ipfs.tar.gz
    tar -xvzf ipfs.tar.gz
    cd go-ipfs
    sudo bash install.sh
}

get_ipfs
ipfs init
nohup ipfs daemon &
sleep 5
ipfs get `cat hash | head -n 1` -o gui
cd gui && ls -al
