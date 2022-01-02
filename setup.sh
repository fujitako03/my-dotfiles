# 実行場所のディレクトリを取得
THIS_DIR=$(dirname $0)

cd $THIS_DIR

# my-dotfilesに存在する.から始まるファイルについてシンボリックリンクを張る
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".gitmodules" ] && continue

    ln -snfv ${PWD}/"$f" ~/
done

# # VSCode
# ln -snfv ${PWD}/setting.json ~/.vscode-server/data/Machine/
# ln -snfv ${PWD}/keybindings.json /mnt/c/Users/okome/AppData/Roaming/Code/User/keybindings.json

