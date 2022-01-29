set nobackup
set noswapfile

"encoding for korean
set encoding=utf-8
set fileencodings=utf-8,cp949
set langmenu=utf-8

set smartindent
set tabstop=4
set expandtab
set shiftwidth=4

"etc
set cindent
set mouse=a " use mousr corsur
set history=1000 
"set ignorecase 
set number

"Vundle setting
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree' 
Plugin 'AutoComplPop' 
Plugin 'taglist-plus' "source class opened, function, vars information
"Taglist need Ctags, it needs to install ctags by package manaer
Plugin 'Raimondi/delimitMate' "enclone quote automatically
Plugin 'machakann/vim-highlightedyank' "hilight copied stuff?
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

"NerdTree
nmap <F3> :NERDTree<CR> 
nmap <F4> :TlistToggle<CR>

