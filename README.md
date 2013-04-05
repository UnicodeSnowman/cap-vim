Installation:

    git clone git://github.com/UnicodeSnowman/cap-vim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update
    
To add additional submodules to repo, run:

    git submodule add http://github.com/[user]/[repo-name].git bundle/[repo-name-of-choice]
