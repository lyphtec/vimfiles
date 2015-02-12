# vimfiles

My portable vim configuration.

Some plugins (eg. [tern_for_vim](https://github.com/marijnh/tern_for_vim)) requires python support. On Windows, I'm using a pre-compiled version of Vim that has this enabled available [from here](https://bitbucket.org/Haroogan/vim-for-windows).  Obviously, you will need to have python already installed on your machine.


## Install

#### Linux/Mac:

```
git clone https://github.com/lyphtec/vimfiles ~/.vim
cd ~/.vim
./install.sh
```

#### Windows (from Powershell prompt -- run as Administrator):

```
cd ~
git clone https://github.com/lyphtec/vimfiles
cd vimfiles
.\install.bat
```


## Uninstall

#### Linux/Mac:

```
cd ~
./.vim/uninstall.sh
```

#### Windows (from Powershell prompt):

```
cd ~
.\vimfiles\uninstall.bat
```


## Fonts

For [vim-airline](https://github.com/bling/vim-airline) support, I'm using a [pre-patched Consolas for powerline font](https://github.com/runsisi/consolas-font-for-powerline). If you are using GVim on Linux, you can install the fonts by running the `font-install.sh` script. Other pre-patched powerline fonts compatible with vim-airline are [available here](https://github.com/powerline/fonts) -- see [notes on this](https://github.com/bling/vim-airline#integrating-with-powerline-fonts) from vim-airline readme.

## Inspired by
 - https://github.com/fsproru/vimfiles
