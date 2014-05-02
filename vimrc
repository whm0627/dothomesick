set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.homesick/vim/bundle/vundle
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
"Bundle 'bling/vim-airline'
Bundle 'edkolev/promptline.vim'
Bundle 'itchyny/lightline.vim'
Bundle 'joonty/vdebug.git'
Bundle 'edkolev/tmuxline.vim'
filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
set encoding=utf-8
set laststatus=2
set t_Co=256

let g:airline_theme="wombat"
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
" let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"

" ================== lightline ===================
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' },
      \ }
let g:airline_branch_prefix     = '⭠'
let g:promptline_symbols = {
    \ 'left'       : '⮀',
    \ 'left_alt'   : '>',
    \ 'dir_sep'    : '/',
    \ 'truncation' : '...',
    \ 'vcs_branch' : '⭠',
    \ 'space'      : ' '}
"let g:promptline_powerline_symbols = 1 
let g:airline#extensions#tmuxline#enabled = 1
let g:tmuxline_theme = "lightline"

let g:tmuxline_separators = {
    \ 'left'       : '⮀',
    \ 'left_alt'   : '>',
    \ 'right'      : '⮂',
    \ 'dir_sep'    : '/',
    \ 'truncation' : '...',
    \ 'vcs_branch' : '⭠',
    \ 'space'      : ' '}
