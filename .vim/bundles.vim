"--------------------------------------
" Vundle
"--------------------------------------
set nocompatible
filetype on  " required on OSX
filetype off " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'sjl/gundo.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-sleuth'

" snipmate and deps (https://github.com/garbas/vim-snipmate)
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'

" themes
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'

" javascript
Plugin 'Shutnik/jshint2.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on " required!
