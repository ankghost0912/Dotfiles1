set nocompatible
syntax on
set number
filetype on
filetype plugin on
filetype indent on
set showmatch
set wrap
set linebreak
""---Reading and Writing Text-----"
set autowrite
set autowriteall
set noautoread
set modeline
set modelines=5
set nofoldenable
set autoread
set nohlsearch
nnoremap b ^
nnoremap z $
nnoremap ^ <nop>
nnoremap $ <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

set encoding=utf-8
set fileencoding=utf-8
runtime macros/matchit.vim

set hidden

set fileformat=unix
set viminfo='100,f1
set lazyredraw

"inoremap <tab> <c-p>
set nobackup
set writebackup
set noswapfile
set incsearch
set hlsearch
set scrolloff=3
set backspace=indent,eol,start 

if has("gui running")
	set guioptions-=m "remove menu bar
	set guioptions-=T "remove Tool bar
	set guioptions-=r
	set guioptions-=L
	set lines=999
	set columns=999
        let s:uname=system("uname")
        if s:uname=="Darwin\n"
            set guifont=Incosolata\ for\ Powerline:h15
        endif
endif

set scrolloff=3
set  expandtab
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4
set textwidth=80 
set guifont= Hack:h14 "Source\ Code\ Pro:h12

"----------------Plugin Configuration-------------------
set laststatus=2
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'klen/python-mode'
Plugin 'tpope/vim-repeat'
Plugin 'vim-scripts/Gundo'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Bundle 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-rails'
Plugin 'jpo/vim-railscasts-theme'
call vundle#end()
filetype plugin indent on
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
colorscheme railscasts
set background=dark

"--------------- PyMode Configurations----------"
let g:pymode=1 
let g:pymode_warnings=1
let g:pymode_trim_whitespaces=1
let g:pymode_options=1
let g:pymode_indent=1
let g:pymode_folding=1
let g:pymode_motion=1
let g_pymode_lint_on_fly=0
let g:pymode_rope=0

"-------------- Misc Configs------------------"
let g:NERDTreeWinPos = "right"
