"--------------------------------------
" Vundle
"--------------------------------------
set nocompatible
filetype on  " required on OSX
filetype off " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'sjl/gundo.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'terryma/vim-expand-region'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-commentary'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-notes'
Plugin 'edkolev/tmuxline.vim'

" snipmate and deps (https://github.com/garbas/vim-snipmate)
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'

" themes
Plugin 'nanotech/jellybeans.vim'
Plugin 'blueshirts/darcula'
Plugin 'fcpg/vim-fahrenheit'

" javascript
Plugin 'Shutnik/jshint2.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'pangloss/vim-javascript'

" elm
"Plugin 'lambdatoast/elm.vim'

" elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattreduce/vim-mix'


call vundle#end()
filetype plugin indent on " required!
