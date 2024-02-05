" show command as it's being entered
set showcmd

" enable line numbers
set number relativenumber

" handle tabs and indents
filetype plugin indent on
set tabstop=4 shiftwidth=4 expandtab

" no auto comment cont
"set fo-=ro
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" show trailing whitespace
"set list listchars=trail:.,extends:>

nnoremap <space> za

" Copies the following {} block to system register
let @f='0v/{%$"+y'
" /let @f='0vf{%$"+y'
" Copies from mark v to mark g
let @g='`v"+y`g'

" g( places () around the v-selected region
xnoremap g( <ESC>`>a)<ESC>`<i(<ESC>
