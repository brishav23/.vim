set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'SirVer/ultisnips'

call vundle#end()            " required
filetype plugin indent on    " required

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"let g:UltiSnipsSnippetDir=['~/.vim/UltiSnips']"

filetype on
syntax on
set number
set tabstop=2
colo darkblue
set autoindent
set shiftwidth=2
set backspace=indent,eol,start
autocmd BufNewFile,BufRead *.tex nnoremap <buffer> // :s/^/%<CR>
autocmd BufNewFile,BufRead *.tex nnoremap <buffer> ?? :s/^%//<CR>
autocmd BufNewFile,BufRead *.tex nnoremap <buffer> <C-b> :!pdflatex % && open -ga Preview "%:r.pdf"<CR><CR>
autocmd BufNewFile,BufRead *.md nnoremap <buffer> <C-b> :!pandoc -s -o "%:r.pdf"  % && open -ga Preview "%:r.pdf"<CR><CR>
autocmd BufNewFile,BufRead *.md :syn match markdownIgnore "\$.*\$"

