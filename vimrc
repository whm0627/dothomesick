set nocompatible              " be iMproved, required
filetype on                  " required
syntax on
set number
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

map <C-a> <esc>ggVG<CR>


" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'edkolev/promptline.vim'
Bundle 'rainbow_parentheses.vim'
Bundle 'scrooloose/nerdtree'
"Bundle 'itchyny/lightline.vim'
Bundle 'joonty/vdebug.git'
Bundle 'edkolev/tmuxline.vim'
Bundle 'tpope/vim-surround'
Bundle 'moll/vim-node'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'fatih/vim-go'
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
map <C-n> :NERDTreeToggle<CR>

set encoding=utf-8
set laststatus=2
set t_Co=256

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab


let g:airline_theme="bubblegum"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:promptline_powerline_symbols = 0 
let g:airline#extensions#tmuxline#enabled = 1

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
