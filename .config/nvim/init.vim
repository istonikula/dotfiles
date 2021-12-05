"--------------------------------------
" Plugins
"--------------------------------------
call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'scrooloose/nerdcommenter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

" Initialize plugin system
call plug#end()

"--------------------------------------
" Generic
"--------------------------------------

let mapleader="\<Space>" " this MUST come before any <Leader> mappings
nmap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <Leader>o : CtrlPBuffer<CR>

set mouse=a

" easy window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" no backups
set nobackup
set noundofile
set noswapfile

"--------------------------------------
" Syntax
"--------------------------------------

" show invisible characters
set list
set lcs=tab:▸\ ,trail:·,eol:¬

set cul
set nu
set relativenumber
set ruler
set showcmd

let g:airline_powerline_fonts = 1
set guifont=Monoid\ Nerd\ Font\ Mono\ 11

"--------------------------------------
" Indent
"--------------------------------------
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

"--------------------------------------
" Editing
"--------------------------------------

" moving lines http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


let base16colorspace=256
let g:airline_theme='base16'
colo base16-tomorrow-night

