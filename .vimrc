"Linux/Mac ~/.vimrc
           ~/.vim/
"Windows ~/_vimrc or ~/vimfiles/vimrc
         ~/vimfiles/
set nocompatible
set hidden
set undofile

if has('vim_starting')                                                                                                      
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()
NeoBundle 'git://github.com/davidhalter/jedi-vim.git'

set encoding=utf-8
set fileformats=unix,dos,mac
set fileformat=unix
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
set matchtime=2
set cursorline
set number
set showcmd
set laststatus=2
set statusline=%F\ %y\ \ %r%m%h\ %=[%l/%L:%c]\ [%p%%]
set virtualedit=block
set wrap
set textwidth=0
set backspace=start,indent,eol
set wildmenu wildmode=list:full
set whichwrap=b,s,h,l,<,>,[,]
set expandtab
set tabstop=2

if has('mouse')
  set mouse=a
endif

highlight Normal ctermbg=black ctermfg=grey
highlight StatusLine term=none cterm=none ctermfg=black ctermbg=grey
highlight CursorLine term=none cterm=none ctermfg=none ctermbg=darkgray
syntax on
let python_highlight_all=1

NeoBundleCheck
filetype plugin indent on 
