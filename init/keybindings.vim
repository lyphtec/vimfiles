" Keybindings
" -----------

" 'jk' for <Esc> as per https://github.com/valloric/youcompleteme#i-get-weird-errors-when-i-press-ctrl-c-in-vim
inoremap jk <Esc>

nmap <silent> <Space> :set invhls<CR>:set hls?<CR>    " Turn off that stupid highlight search
nmap <silent> \w :set invwrap<CR>:set wrap?<CR>       " set text wrapping toggles

map <silent> <F12> :set invlist<CR>             " F12 to switch display of unprintable characters

" Edit the vimrc file
if has('win32')
  nmap <silent> \ev :e ~/vimfiles/vimrc<CR>
else
  nmap <silent> \ev :e ~/.vimrc<CR>
endif

nmap <silent> \cd :lcd %:h<CR>                  " cd to the directory containing the file in the buffer
nmap <silent> \md :!mkdir -p %:p:h<CR>

nmap <silent> \p "*p<CR>                        " Paste from clipboard
nmap <silent> <C-P> "*p<CR>

" trigger omnicomplete suggestions
inoremap <S-Space> <C-x><C-o>

" Move lines using Alt + direction : see http://vim.wikia.com/wiki/Moving_lines_up_or_down
" --- seems to only work in gvim :(
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Make Control-direction switch between windows (like C-W h, etc)
nmap <silent> <C-k> <C-W><C-k>
nmap <silent> <C-j> <C-W><C-j>
nmap <silent> <C-h> <C-W><C-h>
nmap <silent> <C-l> <C-W><C-l>

" Auto-indent whole file
map <silent> <F8> mzgg=G'z :delmarks z<CR>:echo "Reformatted."<CR>

" Buffers
nnoremap <leader>l :bnext<CR>                   " Move to the next buffer
nnoremap <leader>h :bprevious<CR>               " Move to the bprevious buffer

" NERDTree
nmap <F7>   :NERDTreeToggle<CR>             " Toggle the NERD Tree on an off with F7
nmap <S-F7> :NERDTreeClose<CR>              " Close the NERD Tree with Shift-F7
map \       :NERDTreeToggle<CR>
map \|      :NERDTreeFind<CR>               " Show current file
