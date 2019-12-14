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

" }}} 

" Custom Mappings {{{

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

" Don't waste time holding shift for commands
map ; :
noremap ;; ;

" Jump to start and end of line easier
nnoremap H ^
nnoremap L $

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
