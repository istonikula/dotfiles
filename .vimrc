"--------------------------------------
" Plugins
"--------------------------------------
call plug#begin('~/.vim/plugged')
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
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'xolox/vim-notes'
Plug 'edkolev/tmuxline.vim'

" themes
Plug 'nanotech/jellybeans.vim'
Plug 'blueshirts/darcula'
Plug 'fcpg/vim-fahrenheit'
Plug 'mhartington/oceanic-next'
Plug 'chriskempson/base16-vim'

" syntax 
Plug 'sheerun/vim-polyglot'

" js
Plug 'moll/vim-node'
Plug 'othree/javascript-libraries-syntax.vim'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" completion, details: https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
Plug 'Shougo/neocomplete.vim'
Plug 'ervandew/supertab'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'sudo yarn global add tern' }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

" elixir
Plug 'mattreduce/vim-mix'

" nerdtree file icons
Plug 'ryanoasis/vim-devicons'

call plug#end()


"--------------------------------------
" Generic
"--------------------------------------
set encoding=utf-8 nobomb

let mapleader="\<Space>" " this MUST come before any <Leader> mappings
nmap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <Leader>o : CtrlPBuffer<CR>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

map <Leader><Leader> <Plug>(easymotion-prefix)

" easy window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" expand region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" omnicompletion trigger
imap <c-space> <c-x><c-o>

" no backups
set nobackup
set noundofile
set noswapfile

"--------------------------------------
" Syntax
"--------------------------------------
" set termguicolors
syntax on
set showmatch
let base16colorspace=256
colo base16-tomorrow-night
hi Search ctermbg=green ctermfg=black
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
set cul

" show invisible characters
set list
set lcs=tab:▸\ ,trail:·,eol:¬

set nu
set relativenumber
set ruler
set showcmd
set hls
set wildmenu
set wildmode=full
set laststatus=2
set backspace=2
set mouse=a

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
nnoremap t <C-]>

nnoremap <Left>     :echoerr "Use h"<CR>
nnoremap <Right>    :echoerr "Use l"<CR>
nnoremap <Up>       :echoerr "Use k"<CR>
nnoremap <Down>     :echoerr "Use j"<CR>

" http://stackoverflow.com/questions/6778961/alt-key-shortcuts-not-working-on-gnome-terminal-with-vim  nnoremap j :m .+1<CR>==
exec "set <A-j>=\ej"
exec "set <A-k>=\ek"
set timeout ttimeoutlen=50

" moving lines http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"--------------------------------------
" Code completion
"--------------------------------------

set completeopt=longest,menuone,preview
"
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:SuperTabClosePreviewOnPopupClose = 1

let g:used_javascript_libs = 'ramda,react'


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint', 'tern_lint']

