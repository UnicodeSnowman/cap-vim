ln -s $(dirname $0)/vimrc ~/.vimrc
ln -s $(dirname $0)/gvimrc ~/.gvimrc

cd ~/.vim
git submodule init
git submodule update
