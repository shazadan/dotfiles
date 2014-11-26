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

Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'http://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/tpope/vim-git.git'
Plugin 'https://github.com/tpope/vim-surround.git'
"Plugin 'https://github.com/Lokaltog/powerline.git'
Plugin 'https://github.com/bling/vim-airline.git'
Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'https://github.com/jmcantrell/vim-virtualenv.git'
Plugin 'https://github.com/edkolev/tmuxline.vim.git'
Plugin 'https://github.com/edkolev/promptline.vim.git'
Plugin 'https://github.com/msanders/snipmate.vim.git'
Plugin 'https://github.com/vim-scripts/TaskList.vim.git'
Plugin 'https://github.com/nvie/vim-flake8.git'
Plugin 'https://github.com/ervandew/supertab.git'
Plugin 'https://github.com/mileszs/ack.vim.git'
Plugin 'https://github.com/sjl/gundo.vim.git'
Plugin 'https://github.com/fs111/pydoc.vim.git'
Plugin 'https://github.com/alfredodeza/pytest.vim.git'
Plugin 'https://github.com/techlivezheng/vim-plugin-minibufexpl.git'

"Plugin 'https://github.com/reinh/vim-makegreen'

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
"autocmd vimenter * NERDTree

" Use fugitive to show git branch in status bar
set statusline=%{fugitive#statusline()}

" vim-airline
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
set timeoutlen=50

" Tasklist mapping
map <leader>td <Plug>TaskList

" Gundo - Revision History - mapping
map <leader>g :GundoToggle<CR>

" Supertab completion
"" context sensitive and to enable omni code completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"" enable the menu and pydoc preview
set completeopt=menuone,longest,preview

"" Ack mapping for search
nmap <leader>a <Esc>:Ack!

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
