#!/bin/bash

# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR

# my-dotfilesに存在する.から始まるファイルについてシンボリックリンクを張る
for f in .?*; do
    ln -snfv ${PWD}/"$f" ~/
done
    