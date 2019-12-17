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
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'jiangmiao/auto-pairs'
    Plug 'itchyny/lightline.vim'
    Plug 'mhinz/vim-signify'
    Plug 'junegunn/fzf'
    Plug 'w0rp/ale'
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

" }}}

" Folding {{{

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax
nnoremap , za
" }}}

" VIMRC {{{

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>

" }}}

" vim:foldmethod=marker:foldlevel=0
