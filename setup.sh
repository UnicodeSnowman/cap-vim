ln -sf $(dirname $0)/vimrc ~/.vimrc
ln -sf $(dirname $0)/gvimrc ~/.gvimrc

vim -c "PlugInstall|qa"
