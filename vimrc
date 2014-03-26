" -----------
"  Vim Config
"  ----------
"
"  TL;DR
"  Check out README.md :)
"
"  Files in .vim/init contains most of the configs. This file is minimal and uses Vundle to setup plugins before initialising
"  configs from .vim/init/*
"

set nocompatible            " iMproved!
set encoding=utf-8
filetype off
syntax on


" Vundle stuff
if has('win32') || has('win64')
  set rtp+=~/vimfiles/bundle/vundle/
  call vundle#rc('$HOME/vimfiles/bundle/')
else
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
endif

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'Spaceghost/vim-matchit'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'pangloss/vim-javascript'
Bundle 'kongo2002/fsharp-vim'
Bundle 'mattn/emmet-vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'leafgarland/typescript-vim'


filetype plugin indent on   " Automatically detect file types

" Source init files
runtime! init/**.vim
