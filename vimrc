set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
 
" my plugins
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
syntax on
set incsearch
set ignorecase
set smartcase
set showcmd
set showmatch
set nu
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set formatoptions-=cro " disable auto comment on newline
set clipboard=unnamedplus

inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>
