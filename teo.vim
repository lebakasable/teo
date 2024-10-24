" Vim syntax file
" Language: Teo

" Usage Instructions
" Put this file in .vim/syntax/teo.vim
" and add in your .vimrc file the next line:
" autocmd BufRead,BufNewFile *.teo set filetype=teo

if exists("b:current_syntax")
   finish
endif

setlocal commentstring=#%s

syntax match Comment "#.*" contains=Todo
syntax region Comment start="##" end="##" contains=Todo
syntax keyword Todo TODO XXX FIXME NOTE
syntax keyword Keyword rule shape apply done

let b:current_syntax = "teo"
