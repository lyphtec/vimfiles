
au BufRead,BufNewFile jquery.*.js         set ft=javascript syntax=jquery
au BufRead,BufNewFile *.nuspec            set ft=xml syntax=xml
au! BufReadPost       {COMMIT_EDITMSG,*/COMMIT_EDITMSG}               set ft=gitcommit noml list| norm 1G

" open help in vertical split
au BufWinEnter *.txt if &ft == 'help' | wincmd H | endif

" Fix the shellslash issue with Vundle : https://github.com/gmarik/vundle/issues/111
au FileType vundle setlocal noshellslash

" Highlight JSON files as javascript
autocmd BufRead,BufNewFile *.json set filetype=javascript

au BufNewFile,BufRead *.md set filetype=markdown

" Open all folds in Markdown.
autocmd FileType mkd normal zR
autocmd FileType md normal zR

" Set filetypes for unusual files
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.vash set filetype=html
au BufNewFile,BufRead *.hbs set filetype=html
au BufNewFile,BufRead web.config set filetype=xml

" Typescript QuickFix window auto popup on :make errors - https://github.com/leafgarland/typescript-vim
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Omni completion "{{{
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,md,mkd,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" }}}
