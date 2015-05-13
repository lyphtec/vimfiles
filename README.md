# vimfiles

My portable vim configuration.

Some plugins (eg. [tern_for_vim](https://github.com/marijnh/tern_for_vim)) requires python support. On Windows, the official packaged version has this enabled, but it's built for 32bit - thus, you will need a 32bit version of Python installed. Using [chocolatey](https://chocolatey.org/), make sure you install the 32bit packages (either [`python2-x86_32`](https://chocolatey.org/packages/python2-x86_32/2.7.9) or [`python-x86_32`](https://chocolatey.org/packages/python-x86_32) if you want Python 3), NOT the 64bit ones. Generally, do the following and you're good to go:

```bat
C:\>choco install python2-x86_32
C:\>choco install vim
```


## Install

#### Linux/Mac:

```bash
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

```bash
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

## Other Resources

- [Cool Vim goodies](http://www.k1ka.be/desidia/?UseVim)

## Inspired by
 - https://github.com/fsproru/vimfiles
