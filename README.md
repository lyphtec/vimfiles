# vimfiles

My portable vim configuration

## Install

#### Linux/Mac:

```
git clone https://github.com/lyphtec/vimfiles.git ~/.vimfiles
cd ~/.vimfiles
./install.sh
```

#### Windows (from Powershell prompt):

```
cd ~
git clone https://github.com/lyphtec/vimfiles.git
cd vimfiles
.\install.bat
```
Note: The Windows install uses ln.exe from (Git install) to create a hard link to the config file from %HOME%\vimfiles\vimrc to
%HOME%\_vimrc and also the other Windows specific files (_gvimrc & _vsvimrc). This is because symbolic linking (ln -s) doesn't work
the same as on Linux/Mac with this util. This means that updating the repo (git pull) may not have the desired effect as it can break the
hard link.  To actually create a symbolic link on Windows, you can do the following from a Command Prompt with Administrator
priviledges:

```
C:\Users\John>mklink _vimrc .\vimfiles\vimrc
C:\Users\John>mklink _gvimrc .\vimfiles\_gvimrc
C:\Users\John>mklink _vsvimrc .\vimfiles\_vsvimrc
```

## Uninstall

#### Linux/Mac:

```
cd ~/.vimfiles
./uninstall.sh
```

#### Windows (from Powershell prompt):

```
cd ~
.\vimfiles\uninstall.bat
```

## Inspired by
 - https://github.com/fsproru/vimfiles
