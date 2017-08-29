ln -sf $(dirname $0)/vimrc ~/.vimrc
ln -sf $(dirname $0)/gvimrc ~/.gvimrc

# Neovim Setup
mkdir -p ~/.config
ln -sf $(dirname $0) ~/.config/nvim
ln -sf $(dirname $0)/vimrc ~/.config/nvim/init.vim
