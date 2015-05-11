"Linux/Mac ~/.vimrc
"          ~/.vim/
"Windows ~/_vimrc or ~/vimfiles/vimrc
"        ~/vimfiles/
"mkdir -p ~/.vim/bundle
"cd ~/.vim/bundle
"git clone https://github.com/Shougo/neobundle.vim.git
"git clone https://github.com/davidhalter/jedi-vim.git

set nocompatible
set hidden
set undofile

"if has('vim_starting')
"endif
set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'https://github.com/davidhalter/jedi-vim.git'
call neobundle#end()

set fileencodings=utf-8,cp932,euc-jp,sjis,iso-2022-jp
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
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
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
set shiftwidth=2
set nowritebackup
set nobackup
set noswapfile
set t_vb=
set novisualbell
set clipboard+=unnamed

inoremap jj <Esc>
nmap <silent> <Esc><Esc> :nohlsearch<CR>
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

autocmd BufNewFile,BufRead *.py nnoremap <C-e> :!python %

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
