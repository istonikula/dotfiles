
"--------------------------------------
" Plugins
"--------------------------------------
call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'Lokaltog/vim-easymotion'
Plug 'sjl/gundo.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'xolox/vim-notes'
Plug 'edkolev/tmuxline.vim'

" snipmate and deps (https://github.com/garbas/vim-snipmate)
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'

" themes
Plug 'nanotech/jellybeans.vim'
Plug 'blueshirts/darcula'
Plug 'fcpg/vim-fahrenheit'

" javascript
Plug 'Shutnik/jshint2.vim'
Plug 'marijnh/tern_for_vim'
Plug 'pangloss/vim-javascript'

" elm
"Plugin 'lambdatoast/elm.vim'

" elixir
Plug 'elixir-lang/vim-elixir'
Plug 'mattreduce/vim-mix'
call plug#end()

"--------------------------------------
" Generic
"--------------------------------------
let mapleader="\<Space>" " this MUST come before any <Leader> mappings
nmap <silent> <Leader>p :NERDTreeToggle<CR>
let g:ctrlp_map = '<Leader>n'
nnoremap <Leader>o : CtrlPBuffer<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
map <Leader><Leader> <Plug>(easymotion-prefix)

" easy window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" expand region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" backups
set noswapfile

"--------------------------------------
" Syntax
"--------------------------------------
syntax on
set showmatch
colo darcula
set cul

" show invisible characters
set list
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

"--------------------------------------
" Visuals
"--------------------------------------
set nu
set ruler
set relativenumber
set showcmd
set hls
set wildmenu
set wildmode=full
set laststatus=2
set backspace=2
set mouse=a

"airline
let g:airline_powerline_fonts = 1
if has("gui_running")
  set guifont=Roboto\ for\ Powerline\ 11
endif


"--------------------------------------
" Indent
"--------------------------------------
set ai
set si
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
