" enable line numbers
set number relativenumber

" handle tabs and indents
filetype plugin indent on
set tabstop=4 shiftwidth=4 expandtab

" show trailing whitespace
"set list listchars=trail:.,extends:>

augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

nnoremap <space> za

" Copies the following {} block to system register
let @f='0vf{%$"+y'
":nmap ;f @f

" Highlight text over column 80
if has("autocmd")
    augroup module
        autocmd BufRead,BufNewFile *.java match ErrorMsg '\%>80v.\+'
    augroup END
endif

" no auto comment cont
set fo-=ro
