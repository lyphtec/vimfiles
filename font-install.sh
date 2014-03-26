#!/bin/sh

# This installs the Consolas font for powerline (vim-airline)
# From http://4thinker.com/vim-airline.html

cd ~/.fonts
git clone https://github.com/runsisi/consolas-font-for-powerline
fc-cache -vf ~/.fonts

