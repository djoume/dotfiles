let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-dispatch'
Plug 'dense-analysis/ale'
Plug 'janko-m/vim-test'
Plug 'ludovicchabant/vim-gutentags'
Plug 'altercation/vim-colors-solarized'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'github/copilot.vim'
call plug#end()

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
set clipboard=unnamed
set incsearch
inoremap jj <Esc>
set shell=bash\ -l
tnoremap <Esc> <C-\><C-n>
tnoremap jj <C-\><C-n>


" vim-test
let test#strategy = "dispatch"
let test#javascript#runner = "vitest"
let test#javascript#vitest#executable = "npm run test:unit --"
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
" vim-test

" ale begin
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\   'typescriptreact': ['eslint'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'typescriptreact': ['prettier', 'eslint'],
\}
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_fix_on_save = 1
let g:ale_virtualtext_prefix = '%comment% %linter% %type%: '
" ale end

" fzf begin
nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>fg :GFiles<CR>
nnoremap <silent> <leader>fb :Buffers<CR>
nnoremap <silent> <leader>fh :History<CR>
nnoremap <silent> <leader>fl :Lines<CR>
nnoremap <silent> <leader>fr :Rg<CR>
nnoremap <silent> <leader>fc :Commits<CR>
" fzf end
