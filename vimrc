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

Plugin 'dracula/vim', {'name':'dracula'}

Plugin 'lervag/vimtex'

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

let g:tex_flavor='latex' " Default tex file format
let g:vimtex_view_method = 'skim' " Choose which program to use to view PDF file
let g:vimtex_view_general_viewer = 'skim'
let g:vimtex_compiler_method = 'latexmk'

syntax on
set number
colorscheme dracula
hi Normal ctermbg=none
hi Normal ctermfg=none
set autoindent
set hidden
set tabstop=2
set expandtab
set shiftwidth=2
set backspace=indent,eol,start
set incsearch
autocmd BufNewFile,BufRead *.py set filetype=mypython
autocmd BufNewFile,BufRead *.vimcp set filetype=math
autocmd BufNewFile,BufRead *.tex set syntax=tex
autocmd BufNewFile,BufRead *.md nnoremap <buffer> <C-b> :!pandoc -s -o "%:r.pdf"  % && open -ga Preview "%:r.pdf"<CR><CR>
autocmd BufNewFile,BufRead *.md :syn match markdownIgnore "\$.*\$"
set tags=tags;$HOME
set autoread
set rnu

set exrc
set encoding=utf-8
