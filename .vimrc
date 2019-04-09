filetype plugin on
syntax enable

set background=dark
colorscheme material-theme

set number
set tabstop=4 shiftwidth=4 expandtab
set backspace=indent,eol,start

set title
set showmatch
set smartcase
set smartindent
set autoindent
set scrolloff=3
set mouse=a
set wildmenu
set wildignore=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn
set nobackup
set confirm

vnoremap <C-c> <Esc>
inoremap <C-c> <Esc>
nnoremap <C-c> <Esc>
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
    set termguicolors
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme'
Plug 'raimondi/delimitmate'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

set updatetime=100

source ~/.vim/plugged/cscope_maps.vim

