" Vundle BEGIN
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-dispatch'
Plugin 'w0rp/ale'
Plugin 'janko-m/vim-test'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'bling/vim-airline'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Vundle END


syntax on
set bg=light
colorscheme solarized
filetype on
filetype indent on
filetype plugin on
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set number
set listchars=tab:>-,trail:-,nbsp:%
set list
set wildmode=longest,list
set laststatus=2 " Always show status line
set backspace=indent,eol,start
let mapleader=" "
set ruler
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P


" Syntastic BEGIN
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop']
" Syntastic END

" vim-test
let test#strategy = "dispatch"
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
" vim-test

