
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
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'
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

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" completion, details: https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'sudo yarn global add yarn' }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

" elixir
Plug 'mattreduce/vim-mix'

Plug 'ryanoasis/vim-devicons'

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
set termguicolors
syntax enable
set showmatch
colo darcula
set cul

" show invisible characters
set list
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

" polyglot disable
"let g:polyglot_disabled = ['javascript', 'typescript']

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

"--------------------------------------
" Indent
"--------------------------------------
" http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim
set ts=2 sts=2 sw=2 expandtab

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

"--------------------------------------
" Code completion
"--------------------------------------
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]
set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:SuperTabClosePreviewOnPopupClose = 1

nnoremap gx :silent !xdg-open <cfile> &<CR>
