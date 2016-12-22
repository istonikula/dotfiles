:so ~/.vim/bundles.vim

set encoding=utf-8 nobomb

let mapleader="\<Space>" " this MUST come before any <Leader> mappings
"let maplocalleader="_"

"--------------------------------------
" Syntax
"--------------------------------------
syntax on
set showmatch
colo darcula
" colo solarized
set cul
set cuc

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
nnoremap t <C-]>

" edit vim config
nnoremap <silent> <Leader>rc :tabnew<CR>:e ~/.vimrc<CR>
"nnoremap <silent> <Leader>gc :tabnew<CR>:e ~/.gvimrc<CR>
"nnoremap <silent> <Leader>bc :tabnew<CR>:e ~/.vim/bundles.vim<CR>

nmap <silent> <Leader>p :NERDTreeToggle<CR>
  " omnicompletion trigger
imap <c-space> <c-x><c-o>

let g:ctrlp_map = '<Leader>n'
nnoremap <Leader>o : CtrlPBuffer<CR>
"nmap <Leader>m :CtrlPMRUFiles<CR>
"nmap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>fu :CtrlPFunky<CR>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

map <Leader><Leader> <Plug>(easymotion-prefix)

" easy window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

let jshint2_read = 1
let jshint2_save = 1

" expand region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


"--------------
" No backups
"--------------------------------------
set nobackup
set noundofile
set noswapfile

"--------------------------------------
" Misc
"--------------------------------------

" show invisible characters
set list
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

set nu " line numbering
set ruler
set autoread
set ignorecase
set smartcase
set showcmd
set incsearch
set hls " hightlight search
set wildmenu " allow tab completion
set wildmode=full
set laststatus=2
set backspace=2
set mouse=a

let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h14
   endif
endif

nnoremap <Left>     :echoerr "Use h"<CR>
nnoremap <Right>    :echoerr "Use l"<CR>
nnoremap <Up>       :echoerr "Use k"<CR>
nnoremap <Down>     :echoerr "Use j"<CR>

" elm
"let g:elm_format_autosave = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_syntastic_show_warnings = 1
nnoremap <Leader>m :ElmMake<CR>
