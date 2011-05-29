" File: brew.vim
" Author: tokorom
" Version: 0.1
" Last Modified: 2008/05/18
"
" Overview
" --------
" define the function that change filetype to 'brew'
"

if exists('loaded_brew')
    finish
endif
let loaded_brew=1

function! ChangeFiletypeToBREW() range
    " change filetype to a current buffer
    set filetype=brew
    " change filetype automatically to all c++ buffers 
    augroup filetypedetect
    au! BufRead,BufNewFile *.cpp,*.c,*,hpp,*.h  setfiletype brew
    au! BufNewFile *.cpp,*.c,*,hpp,*.h  setlocal fileencoding=cp932
    augroup END
endfunction
command! Brew :call ChangeFiletypeToBREW()

