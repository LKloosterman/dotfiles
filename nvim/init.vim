call plug#begin('~/.vim/plugged')
    Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}     " Nice theme that works in my terminal
    Plug 'scrooloose/nerdtree'                              " Must have file explorer
    Plug 'scrooloose/nerdcommenter'                         " Easy line/block commenter
    Plug 'pangloss/vim-javascript'                          " Extra support for JS
    Plug 'leafgarland/typescript-vim'                       " Extra support for TS
    Plug 'vim-airline/vim-airline'                          " Good looking status bar
    Plug 'vim-airline/vim-airline-themes'                   " Status bar themes
    Plug 'tpope/vim-fugitive'                               " Git support
    Plug 'airblade/vim-gitgutter'                           " Show Git changes
    Plug 'sheerun/vim-polyglot'                             " Wide syntax support for languages
call plug#end()

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab

" No swap files!
set noswapfile
set nobackup
set nowb

" Persistent undo
if has('persistent_undo')
    silent !mkdir ~/.nvim/backups > /dev/null 2>&1
    set undodir=~/.nvim/backups
    set undofile
endif

" Wrap lines conveniently
set nowrap
set linebreak

" Move around wrapped lines normally
nmap j gj
nmap k gk

" Always have 5 lines of buffer space before/after cursor
set scrolloff=5

" Common editor configurations
set number
set cursorline
syntax on
set list listchars=tab:——,eol:¬,trail:·
set wildmenu
set wildmode=list:longest
set hlsearch
set autoread

" Folding configuration
set foldmethod=indent
set foldnestmax=1
set nofoldenable

" Enabling custom colorscheme
let base16colorspace=256
colorscheme Tomorrow-Night

" NERDTree settings
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeMirror = 1

" Keyboard mappings
" Easier Leader
let mapleader=","
" NERDTree mappings
nnoremap <Leader>f :NERDTreeFind<Enter>
nnoremap <Leader>t :NERDTreeToggle<Enter>
" Remap arrow keys to move between tabs
nnoremap <Left> :tabp<Enter>
nnoremap <Right> :tabn<Enter>

