"            $$$$$
"            $:::$
"        $$$$$:::$$$$$$         CCCCCCCCCCCCC
"      $$::::::::::::::$     CCC::::::::::::C
"     $:::::$$$$$$$::::$   CC:::::::::::::::C
"     $::::$       $$$$$  C:::::CCCCCCCC::::C
"     $::::$             C:::::C       CCCCCC
"     $::::$            C:::::C
"     $:::::$$$$$$$$$   C:::::C
"      $$::::::::::::$$ C:::::C
"        $$$$$$$$$:::::$C:::::C
"                 $::::$C:::::C
"                 $::::$C:::::C
"     $$$$$       $::::$ C:::::C       CCCCCC
"     $::::$$$$$$$:::::$  C:::::CCCCCCCC::::C
"     $::::::::::::::$$    CC:::::::::::::::C
"      $$$$$$:::$$$$$        CCC::::::::::::C
"           $:::$               CCCCCCCCCCCCC
"           $$$$$

" Plugins {{{

call plug#begin()
    Plug 'potatoesmaster/i3-vim-syntax'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'jiangmiao/auto-pairs'
    Plug 'itchyny/lightline.vim'
    Plug 'mhinz/vim-signify'
    Plug 'junegunn/fzf'
    Plug 'w0rp/ale'
    Plug 'alfredodeza/pytest.vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
    Plug 'lervag/vimtex'
call plug#end()

" }}}

" Native vim settings {{{

" Set leader to space bar
let mapleader="\<Space>"

" Enable autocompletion:
set wildmode=longest,list,full

set number relativenumber

" Setup tabs to be 4 spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=0 smarttab

" syntax highlighting
syntax on

" Update files on change
set autoread

" Save edit history between sessions
set undofile
set undodir=~/.vim/undodir

" Disable line wrapping
set nowrap

"Save current buffer
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>e :wq<CR>

" remove sounds effects
set noerrorbells
set visualbell

" Ignore case in search unless contains capital
set ignorecase
set smartcase

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Always have a sign column
set signcolumn=yes

" Highlight line the cursor is on
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303030 ctermbg=238

" Keep a buffer of 10 lines/columns between cursor and edge when scrolling
set scrolloff=10
set sidescrolloff=10

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" }}}

" Custom Mappings {{{

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

" Remove results found using '/'
nnoremap <esc> :noh<return><esc>

" Don't waste time holding shift for commands
map ; :
noremap ;; ;

" Jump to start and end of line easier
nnoremap H ^
nnoremap L $

" Exit insert mode by quickly pressing j twice
inoremap jj <esc>
inoremap kk <esc>

" Clipboard functionality (paste from system)
vnoremap  <leader>y "+y
nnoremap  <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" Kill the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" }}}

" Folding {{{

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax
nnoremap , za
" }}}

" VIMRC {{{

nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>

" }}}

" vim:foldmethod=marker:foldlevel=0
