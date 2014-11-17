" Set number lines
set number 

" Vundle Configuration
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

"Plugin 'git://git.wincent.com/command-t.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'http://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/tpope/vim-git.git'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/bling/vim-airline.git'
Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'https://github.com/jmcantrell/vim-virtualenv.git'
Plugin 'https://github.com/edkolev/tmuxline.vim.git'

"Plugin 'https://github.com/msanders/snipmate.vim.git'
"Plugin 'https://github.com/ervandew/supertab.git'
"Plugin 'https://github.com/mileszs/ack.vim.git'
"Plugin 'https://github.com/sjl/gundo.vim.git'
"Plugin 'https://github.com/fs111/pydoc.vim.git'
"Plugin 'https://github.com/vim-scripts/pep8.git'
"Plugin 'https://github.com/alfredodeza/pytest.vim.git'
"Plugin 'https://github.com/reinh/vim-makegreen'
"Plugin 'https://github.com/vim-scripts/TaskList.vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Map Leader key to comma
let mapleader=","

" Code Folding
set foldmethod=indent
set foldlevel=99

" Solarized color scheme
syntax enable
set background=dark
let g:solarized_termcolors = 256  " New line!!
colorscheme solarized

" NerdTree auto start vim launch
autocmd vimenter * NERDTree
set statusline=%{fugitive#statusline()}
