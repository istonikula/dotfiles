:so ~/.vim/bundles.vim

set encoding=utf-8 nobomb

let mapleader="," " this MUST come before any <Leader> mappings
let maplocalleader="_"

"--------------------------------------
" Syntax
"--------------------------------------
syntax on
set showmatch
colo jellybeans
" colo solarized
set cul

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

" edit vim config
nnoremap <silent> <Leader>rc :tabnew<CR>:e ~/.vimrc<CR>
"nnoremap <silent> <Leader>gc :tabnew<CR>:e ~/.gvimrc<CR>
"nnoremap <silent> <Leader>bc :tabnew<CR>:e ~/.vim/bundles.vim<CR>

nmap <silent> <Leader>p :NERDTreeToggle<CR>
  " omnicompletion trigger
imap <c-space> <c-x><c-o>

let g:ctrlp_map = '<Leader>n'
nmap <Leader>m :CtrlPMRUFiles<CR>
nmap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

map <Leader><Leader> <Plug>(easymotion-prefix)

" easy window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

let jshint2_read = 1
let jshint2_save = 1


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
set showcmd
set incsearch
set hls " hightlight search
set wildmenu " allow tab completion
set wildmode=full
set laststatus=2
set backspace=2
set mouse=a

let g:airline_powerline_fonts = 1
"function! AirlineInit()
"  let g:airline_section_b = airline#section#create(['branch'])
"  let g:airline_section_c = '%<%t%m'
"  let g:airline_section_warning = airline#section#create(['syntastic'])
"endfunction
"autocmd VimEnter * if exists(':AirlineToggle') | call AirlineInit()
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

augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,javascript,scala let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType vim              let b:comment_leader = '" '
  noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
  noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
augroup END

