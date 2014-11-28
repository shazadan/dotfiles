" Autoloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Map leader to comma - before all plugins
let mapleader=","

" ====================
" Vundle Configuration
" ====================
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

" File Search
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/kien/ctrlp.vim'

"Color Theme
Plugin 'git://github.com/altercation/vim-colors-solarized.git'

"Status line
"Plugin 'https://github.com/Lokaltog/powerline.git', {'rtp': 'powerline/bindings/vim/'}
Plugin 'https://github.com/bling/vim-airline.git'

" Tabs
Plugin 'https://github.com/ervandew/supertab.git'

"Git support
Plugin 'http://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/tpope/vim-git.git'

" tmux support 
Plugin 'https://github.com/edkolev/tmuxline.vim.git'

" Development
Plugin 'https://github.com/tpope/vim-surround.git'
" snipmate begin
Plugin 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plugin 'https://github.com/tomtom/tlib_vim.git'
Plugin 'https://github.com/garbas/vim-snipmate.git'
Plugin 'https://github.com/honza/vim-snippets.git'
" snipmate end
Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'https://github.com/vim-scripts/TaskList.vim.git'
Plugin 'https://github.com/mileszs/ack.vim.git'
Plugin 'https://github.com/sjl/gundo.vim.git'
Plugin 'https://github.com/techlivezheng/vim-plugin-minibufexpl.git'

" Python
Plugin 'https://github.com/jmcantrell/vim-virtualenv.git'
Plugin 'https://github.com/nvie/vim-flake8.git'
Plugin 'https://github.com/fs111/pydoc.vim.git'
Plugin 'https://github.com/alfredodeza/pytest.vim.git'
Plugin 'https://github.com/davidhalter/jedi-vim.git'

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
" ========================
" Vundle Configuration END
" ========================

" Visual settings
set hidden                      " hide buffers instead of closing them
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set title                       " change the terminal's title

" Retain sufficient buffer history
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo

" Sound settings
set visualbell                  " don't beep
set noerrorbells                " don't beep

" Backup settings
set nobackup
set noswapfile

" Code Folding
set foldmethod=indent
set foldlevel=99

" Unbind arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Easy tab navigation
map <leader>n <esc>:tabprevious <CR>
map <leader>m <esc>:tabnext <CR>

" Copy/Paste settings
set pastetoggle=<F3>
set clipboard=unnamed

" Mouse settings
set mouse=a

" Normal backspace behavior
set bs=2


" ==========================
" PLUGIN SETTINGS START HERE
" ==========================

" Color Theme Settings - Solarized
syntax enable
set background=dark
let g:solarized_termcolors = 256  " New line!!
colorscheme solarized


" Highlight excess line length
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 80
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
    augroup END

" =================
" NERDTree Settings
" =================
" toggle mapping
map <F2> :NERDTreeToggle<CR>

" auto start with vim launch
"autocmd vimenter * NERDTree

" close NerdTree if only window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" =====================
" NERDTree Settings END
" =====================

" Use fugitive to show git branch in status bar
set statusline=%{fugitive#statusline()}

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
let g:airline_powerline_fonts = 1
set laststatus=2

" Tasklist mapping
map <leader>td <Plug>TaskList

" Gundo - Revision History - mapping
map <leader>g :GundoToggle<CR>

" ===================
" SuperTab Completion
" ===================
" Context sensitive and to enable omni code completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"" Enable the menu and pydoc preview
set completeopt=menuone,longest,preview
" =======================
" SuperTab Completion END
" =======================

" Ack mapping for search
nmap <leader>a <Esc>:Ack!

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*.pyc,*.pyo,*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'


" ========================
" PLUGIN SETTINGS END HERE
" ========================
