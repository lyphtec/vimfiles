@echo off

setlocal

:prompt
set /P C1=Remove vimfiles folder, _vimrc, _gvimrc, & _vsvimrc [Y/N]?
if /I "%C1%" NEQ "Y" goto abort
del _vimrc
del _gvimrc
del _vsvimrc
rmdir /S /Q vimfiles
goto end

:abort
echo Uninstall aborted. Exiting.

:end
endlocal
