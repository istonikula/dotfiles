
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

" syntax 
Plug 'sheerun/vim-polyglot'
"Plug 'othree/yajs.vim'
"Plug 'HerringtonDarkholme/yats.vim'

" js
Plug 'moll/vim-node'
Plug 'othree/javascript-libraries-syntax.vim'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" completion, details: https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neocomplete.vim'
Plug 'ervandew/supertab'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'sudo yarn global add tern' }
" Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

" elixir
Plug 'mattreduce/vim-mix'


Plug 'ryanoasis/vim-devicons'

call plug#end()


"--------------------------------------
" Generic
"--------------------------------------
set encoding=utf-8 nobomb

let mapleader="\<Space>" " this MUST come before any <Leader> mappings
nmap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <Leader>o : CtrlPBuffer<CR>
" let g:ctrlp_custom_ignore = 'node_modules\|\.DS_Store\|\.git'
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

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
colo darcula
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
if has("gui_running")
  " set guifont=Source\ Code\ Pro\ 10
  set guifont=RobotoMono\ Nerd\ Font\ 10
  " set guifont=Monospace\ 10
endif


" disable Background Color Erase (BCE) so that color schemes 
" render properly when inside tmux
"set t_ut=

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
"" Code completion
"--------------------------------------
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#omni#functions = {}
" let g:deoplete#omni#functions.javascript = [
"   \ 'tern#Complete',
"   \ 'jspc#omni'
" \]
" let g:acp_enableAtStartup = 0
" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#sources#omni#functions.javascript = [ 'jspc#omni', 'tern#Complete' ]

set completeopt=longest,menuone,preview
"let g:deoplete#sources = {}
"let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
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

