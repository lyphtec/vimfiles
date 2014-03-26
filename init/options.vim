" General options "{{{

filetype on
filetype plugin on

let g:is_posix = 1             " vim's default is archaic bourne shell, bring it up to the 90s
let mapleader = ','
let maplocalleader = '	'      " Tab as a local leader

set shellslash              " set the forward slash to be the slash of note.  Backslashes suck
set timeoutlen=250          " Time to wait after ESC
set history=512             " Keep some stuff in the history
set clipboard+=unnamed      " Yanks go on clipboard instead
set shiftround              " round indent to multiple of 'shiftwidth'
set tags=.git/tags;$HOME    " consider the repo tags first, then
                            " walk directory tree upto $HOME
                            " looking for tags
                            " note `;` sets the stop folder.  :h file-search

set modeline
set modelines=5             " default numbers of lines to read for modeline instructions

set autowrite               " writes on make/shell commands
set autoread

set nobackup
set nowritebackup
set noswapfile

set hidden                  " the current buffer can be put to the background without writing to disk

set hlsearch                " Enable search highlighting
set incsearch               " Incrementally match the search
set wrapscan                " set the search scan to wrap lines
set ignorecase              " be case insensitive when search
set smartcase               " be case sensitive when input has a capital letter
" "}}}

" Formatting "{{{
set fo+=o                      " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r                      " Do not automatically insert a comment leader after an enter
set fo-=t                      " Do no auto-wrap text using textwidth (does not apply to comments)

set nowrap
set textwidth=0                " Don't wrap lines by default

set tabstop=2                  " tab size eql 2 spaces
set softtabstop=2
set shiftwidth=2               " default shift width for indents
set expandtab                  " replace tabs with ${tabstop} spaces
set smarttab                   "

set backspace=indent
set backspace+=eol
set backspace+=start

set autoindent
set cindent
set indentkeys-=0#            " do not break indent on #
set cinkeys-=0#
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do
set cinwords+=for,switch,case

set cpoptions+=$          " Make the 'cw' and like commands put a $ at the end instead of just deleting the text and replacing it
set key=                  " Disable encryption (:X)
set wildmenu              " Make the command-line completion better
set complete=.,w,b,t      " Same as default except that I remove the 'u' option
" "}}}

" Visual "{{{
syntax on                 " Switch on syntax highlighting
set synmaxcol=2048        " Syntax coloring lines that are too long just slows down the world
set ch=2                      " Make command line two lines high

set showmatch             " show matching brackets
set matchtime=2           " bracket blinking

set vb                      " set visual bell -- i hate that damned beeping

set laststatus=2            " tell VIM to always put a status line in, even if there is only one window
set shortmess=atI           " shortens messages
set showcmd                 " Show the current command in the lower right corner

set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]        " Set the status line the way i like it

set foldenable              " turn on folding
set foldmethod=marker       " fold on the marker
set foldlevel=100           " don't autofold anything (but can still fold manually)

set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo      " These commands open folds

set virtualedit=block         " Allow the cursor to go in to "invalid" places

set splitbelow
set splitright

set nolist                    " don't display unprintable characters, f12 - switches
set listchars=tab:\ ·,eol:¬
set listchars+=trail:·
set listchars+=extends:»,precedes:«
map <silent> <F12> :set invlist<CR>

set lazyredraw              " Don't update the display while executing macros
set showmode                " Show the current mode
set scrolloff=8             " When the page starts to scroll, keep the cursor 8 lines from the top and bottom

set fillchars=""            " get rid of the silly characters in window separators
set diffopt+=iwhite         " Add ignorance of whitespace to diff

set co=170
set lines=45
set textwidth=140           " Set the textwidth to be 120 chars

set comments=sl:/*,mb:\ *,ex:\ */,O://,b:#,:%,:XCOMM,n:>,fb:-     " These things start comment lines
set showfulltag             " When completing by tag, show the whole tag, not just the function name

" Set up the window colors and size
set background=dark

if has("gui_running")
    colorscheme solarized

    if has ('win32') || has('win64') 
      set guifont=Powerline_Consolas:h9:cANSI
    else
      set guifont=Powerline\ Consolas\ 10   " for Linux gVim
    endif
    
    set mousehide             " Hide the mouse pointer while typing

    set guicursor=n-v-c:block-Cursor-blinkon0       " Set up the gui cursor to look nice
    set guicursor+=ve:ver35-Cursor
    set guicursor+=o:hor50-Cursor
    set guicursor+=i-ci:ver25-Cursor
    set guicursor+=r-cr:hor20-Cursor
    set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
    set guioptions=cMg              " console dialogs, do not show menu and toolbar 
    set guioptions-=e               " use text tab bar, not GUI
else
    set t_Co=256
    "colorscheme wombat256
    "set term=xterm-256color
endif
" "}}}


" Plugin configs "{{{
let g:airline_powerline_fonts             = 1
let g:airline_theme                       = 'powerlineish'
let g:airline#extensions#tabline#enabled  = 1

let NERDTreeShowBookmarks=1                 " Show the bookmarks table on startup
 " Don't display these kinds of files
let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.obj$',
            \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
            \ '\.embed\.manifest$', '\.embed\.manifest.res$',
            \ '\.intermediate\.manifest$', '^mt.dep$' ]

let g:user_emmet_leader_key = '<C-S>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
" "}}}
