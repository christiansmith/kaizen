#!/bin/bash

echo
fmt <<'EOF'
WARNING:
This script is meant to be run on a new system. If you have existing dotfiles, kaizen may overwrite them. Press ctrl-c to exit now without making any changes.
EOF

echo ''
read -p "[ENTER] to continue" ok

#
sudo echo ''

echo "Enter your name and email to configure git"
echo ''
read -p "    Name: " name
read -p "    Email: " email


function start_spinning {
  chars=( "-" "\\" "|" "/" )
  interval=0.1
  count=0

  while true
  do
    pos=$(($count % 4))
    echo -en "\b${chars[$pos]}"
    count=$(($count + 1))
    sleep $interval
  done
}

function stop_spinning {
  exec 2>/dev/null
  kill $1
  echo -en "\b \n"
}

trap "stop_spinning $pid; exit" INT TERM EXIT


echo ''
echo 'Building your workstaton'
echo ''

echo -n '    * Creating .gitconfig  '
start_spinning &
pid=$!
git config --global user.name $name
git config --global user.email $email
stop_spinning $pid
echo ''


echo -n '    * Installing system dependencies  '
start_spinning &
pid=$!
{
#  curl -sL https://deb.nodesource.com/setup | sudo bash -
  sudo apt-get update
  sudo apt-get install build-essential docker.io nodejs silversearcher-ag zsh
} &>/dev/null
stop_spinning $pid
echo ''


# Make zsh the default shell
echo '    * Setting default shell to zsh  '
sudo chsh -s `which zsh` $USER
echo ''


# Install kaizen
KAIZEN=$HOME/.kaizen


# Clone kaizen repository and submodules
echo -n "    * Cloning Kaizen to $KAIZEN  "
start_spinning &
pid=$!
git clone -q https://github.com/christiansmith/kaizen.git $KAIZEN
cd $KAIZEN
git submodule init -q
git submodule update -q
cd $HOME
stop_spinning $pid
echo ''


# Link files
echo '    * Linking dotfiles  '
ln -s $KAIZEN/.zshrc $HOME/.zshrc
ln -s $KAIZEN/.vimrc $HOME/.vimrc
ln -s $KAIZEN/.tmux.conf $HOME/.tmux.conf
echo ''


# Install vim plugins
echo -n '    * Installing vim plugins  '
start_spinning &
pid=$!
mkdir -p $HOME/.vim/bundle
ln -s $KAIZEN/Vundle.vim $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall &>/dev/null
cp -r $HOME/.vim/bundle/vim-colorschemes/colors $HOME/.vim/colors
stop_spinning $pid
echo ''



# Install mosh from src
#if [ $mosh = 'yes' ]; then
echo -n '    * Installing mosh  '
cd $KAIZEN/mosh
start_spinning &
pid=$!
{
  sudo apt-get build-dep mosh
  ./autogen.sh && ./configure && make
  sudo make install
  } &>/dev/null
cd $HOME
stop_spinning $pid
#fi
echo ''


# Install antigen

echo -n '    * Initializing antigen  '
start_spinning &
pid=$!
zsh -c "source $KAIZEN/antigen/antigen.zsh; source $KAIZEN/.zshrc"
stop_spinning $pid
echo ''


echo 'Done.'

