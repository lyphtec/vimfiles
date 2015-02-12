@echo off

setlocal

:checkMain
if exist ..\_vimrc (
    goto getConfirm
) else (
    goto copyMain
)

:checkGvim
if exist ..\_gvimrc (
    goto getConfirm2
) else (
    goto copyGvimrc
)

:checkVsvim
if exist ..\_vsvimrc (
    goto getConfirm3
) else (
    goto copyVsvim
)

goto end


:getConfirm
set /P C1=_vimrc already exist. Overwrite [Y/N]?
if /I "%C1%" NEQ "Y" goto end
del ..\_vimrc
goto copyMain

:getConfirm2
set /P C2=_gvimrc already exist. Overwrite [Y/N]?
if /I "%C2%" NEQ "Y" goto end
del ..\_gvimrc
goto copyGvimrc

:getConfirm3
set /P C3=_vsvimrc already exist. Overwrite [Y/N]?
if /I "%C3%" NEQ "Y" goto end
del ..\_vsvimrc
goto copyVsvim

:copyMain
echo Linking ../_vimrc to vimrc
cmd.exe /C mklink ..\_vimrc vimrc
goto checkGvim

:copyGvimrc
echo Linking ../_gvimrc to _gvimrc
cmd.exe /C mklink ..\_gvimrc _gvimrc
goto checkVsvim

:copyVsvim
echo Linking ../_vsvimrc to _vsvimrc
cmd.exe /C mklink ..\_vsvimrc _vsvimrc
goto setup

:setup
echo Checking out Vundle
git submodule update --init

echo Vundling
vim +PluginInstall +qall

echo term_for_vim setup
cd bundle\tern_for_vim
npm install

:end
echo Done
endlocal
