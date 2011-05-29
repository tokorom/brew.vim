" Behaves just like C
runtime! ftplugin/cpp.vim

" setting for Japanese
setlocal fileencodings=cp932,utf-8,euc-jp,iso-2022-jp,ucs-2,latin1
setlocal fileformats=dos,unix,mac

command! BrewCompile make %<.o 

nnoremap  <Space>co     <Esc>:w<CR>:BrewCompile<CR>

