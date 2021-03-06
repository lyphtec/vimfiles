#!/bin/sh

if [ -e $HOME/.vimrc ] || [ -e $HOME/.vim ]; then
  echo "Ooops: ~/.vimrc or ~/.vim already exists. \n\
       It looks like you already have some vim configuration. \n\
       Try to run ./uninstall.sh"
else
  echo === Checking out vundle
  git submodule update --init
  cd -

  echo === Linking vim directories & config
  ln -s $HOME/.vimfiles/vimrc $HOME/.vimrc
  ln -s $HOME/.vimfiles $HOME/.vim

  echo === Vundling
  vim +PluginInstall +qall

  echo === tern_for_vim setup
  cd bundle/tern_for_vim && npm install

  echo === Done
  cd ~
fi
