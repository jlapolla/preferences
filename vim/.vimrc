" Vundle plugin manager.
"
" Installation
" git clone 'https://github.com/VundleVim/Vundle.vim.git' ~/.vim/bundle/Vundle.vim
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Start Vundle plugin list.
Plugin 'VundleVim/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
" End Vundle plugin list.
call vundle#end()
filetype plugin indent on
" End Vundle plugin manager.

" Color settings.
set t_Co=256
syntax enable
colorscheme pablo
set background=dark

" Indentation settings.
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set foldmethod=syntax

" Other settings.
set textwidth=0
set backspace=2
set hlsearch
set showcmd
set nowrap
set ruler
set nojoinspaces
set diffopt+=iwhite

" Git commit messages wrap at 72 characters.
au FileType gitcommit setlocal tw=72
" Enable code folding for JavaScript (jelera/vim-javascript-syntax).
au FileType javascript call JavaScriptFold()
" Enable hard tabs for Makefiles.
au FileType make setlocal noexpandtab tabstop=8
