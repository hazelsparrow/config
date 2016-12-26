set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Bundle 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'
Plugin 'jnurmine/Zenburn'
Plugin 'tmhedberg/SimpylFold'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'scrooloose/nerdcommenter'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

nnoremap <space> za
set encoding=utf-8

au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"au BufNewFile,BufRead *.js, *.html, *.css:
    "\ set tabstop=2
    "\ set softtabstop=2
    "\ set shiftwidth=2
		"
au BufNewFile,BufRead *.html set filetype=htmldjango

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"let python_highlight_all=1
syntax on
set nu
set clipboard=unnamed
set backspace=2 "this is to fix the backspace
colorscheme zenburn
" Fix Python Path (for YCM)
let g:ycm_path_to_python_interpreter="/usr/bin/python"

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set tabstop=2
set softtabstop=2
set shiftwidth=2
