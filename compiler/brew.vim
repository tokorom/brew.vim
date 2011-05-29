" Vim compiler file
" Compiler:     for BREW (ARM) 
" Maintainer:   tokorom
" Last Modified: 2008 May 18
"

if exists("current_compiler")
  finish
endif
let current_compiler = "brew"

if exists(":CompilerSet") != 2          " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

" error format for arm compiler 
CompilerSet efm=setlocal errorformat=\"%f\"\\,\ line\ %l:\ Error:\ %m,\"%f\"\\,\ line\ %l:\ Serious\ error:\ %m,NMAKE\ :\ %m,\"%f\"\\,\ line\ %l:\ Warning:\ %m

" Set nmake as default compiler
CompilerSet makeprg=nmake


