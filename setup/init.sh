#! /bin/bash

TOOLS=/opt/

# pwntools
echo "Install pwntools..."
apt-get update
apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade git+https://github.com/Gallopsled/pwntools.git@dev

## We aren't chumps. Lets install pwn for python 2 as well
python -m pip install pwn


# pwngdb
echo "Installing pwngdb..."
cd $TOOLS
git clone https://github.com/scwuaptx/Pwngdb.git
cp $TOOLS/Pwngdb/.gdbinit ~/

# Vim
# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# vim+tmux
echo "Plugin 'christoomey/vim-tmux-navigator'" >> .vimrc

cp .vimrc ~/.vimrc
vim +PluginInstall +qall
cp .tmux.conf ~/.tmux.conf
