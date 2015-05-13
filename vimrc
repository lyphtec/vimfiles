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

" Vundle stuff
if has('win32') || has('win64')
  set rtp+=~/vimfiles/bundle/vundle/
  call vundle#begin('$HOME/vimfiles/bundle/')
else
  set rtp+=~/.vim/bundle/vundle/
  call vundle#begin()
endif

Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'Spaceghost/vim-matchit'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/html5.vim'
"Plugin 'kongo2002/fsharp-vim'

" Platform specific plugins
if has('unix')
    "Plugin 'Valloric/YouCompleteMe'
else

endif

" Javascript related plugins -- also see http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
" Plugin 'pangloss/vim-javascript'
" Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/yajs.vim'
Plugin 'othree/javascript-libraries-syntax.vim'

Plugin 'digitaltoad/vim-jade'
" This requires python
Plugin 'marijnh/tern_for_vim'
"Plugin 'leafgarland/typescript-vim'

Plugin 'mattn/emmet-vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'nelstrom/vim-markdown-folding'

" OmniSharp
"Plugin 'OmniSharp/omnisharp-vim'
"Plugin 'tpope/vim-dispatch'

call vundle#end()
filetype plugin indent on   " Automatically detect file types

" Source init files
runtime! init/**.vim

syntax on
