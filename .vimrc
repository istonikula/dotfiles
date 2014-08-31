:so ~/.vim/bundles.vim

let mapleader="," " this MUST come before any <Leader> mappings
let maplocalleader="_"

"--------------------------------------
" Syntax
"--------------------------------------
syntax on
set showmatch
colo jellybeans
set nocul

"--------------------------------------
" Indent
"--------------------------------------
set autoindent
set si
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

"--------------------------------------
" Custom key mappings
"--------------------------------------
map <C-l> <C-]>
  " edit .gvimrc
nnoremap <silent> <Leader>rc :tabnew<CR>:e ~/.vimrc<CR>
nnoremap <silent> <Leader>gc :tabnew<CR>:e ~/.gvimrc<CR>
nnoremap <silent> <Leader>bc :tabnew<CR>:e ~/.vim/bundles.vim<CR>

" Regenerate ctags
  "nnoremap <LEADER>g :w<CR>:!sh -xc 'ctags -R'<CR>
  "nnoremap <LEADER>g :!sh -xc 'ctags -R'<CR>
nnoremap <LEADER>g :!ctags -R<CR>

nmap <F8> :TagbarToggle<CR>
nmap <silent> <Leader>p :NERDTreeToggle<CR>
  " omnicompletion trigger
imap <c-space> <c-x><c-o>


"--------------------------------------
" Maintain backup files and temp files
" in ~/.vimfiles
"--------------------------------------
set backup
set undofile
set backupdir=$HOME/.vimfiles/backup
set undodir=$HOME/.vimfiles/undo
set directory=$HOME/.vimfiles/swap
set backupskip=/tmp/*,/private/tmp/*

"--------------------------------------
" Misc
"--------------------------------------

" show invisible characters
set list
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

set nu " line numbering
set ruler
set showcmd
set incsearch
set hls " hightlight search
set wildmenu " allow tab completion
set wildmode=full
set laststatus=2

