"--------------------------------------
" Vundle
"--------------------------------------
set nocompatible
filetype on  " required on OSX
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'wincent/Command-T'
Bundle 'Lokaltog/vim-powerline'
" snipmate and deps (https://github.com/garbas/vim-snipmate)
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
Bundle "garbas/vim-snipmate"
" themes
Bundle "nanotech/jellybeans.vim"
" tagbar
Bundle "majutsushi/tagbar"
" nerdtree
Bundle "scrooloose/nerdtree"
" clojure
Bundle "guns/vim-clojure-static"
Bundle "kien/rainbow_parentheses.vim"
Bundle "tpope/vim-foreplay"
" docker
Bundle "ekalinin/Dockerfile.vim"

filetype plugin indent on " required!

