" -------------------------------------
" Vundle
" -------------------------------------

set nocompatible " no compatibility with legacy vi, it's 2012
filetype off     " required for Vundle

" initialize bundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage itself
Bundle 'gmarik/vundle'
" CtrlP
Bundle 'kien/ctrlp.vim'
" Ruby
Bundle 'vim-ruby/vim-ruby'
" JavaScript
Bundle 'pangloss/vim-javascript'
" Clojure
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
" Liquid/Markdown
Bundle 'tpope/vim-liquid'
" Solarized color theme
Bundle 'altercation/vim-colors-solarized'
" Text Objects
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'

filetype plugin indent on " load file type plugins + indentation

source $VIMRUNTIME/macros/matchit.vim " Enable matchit

" -------------------------------------
" Basic configuration
" -------------------------------------

set encoding=utf-8    " use UTF-8 encoding
syntax enable         " enable syntax recognition
set clipboard=unnamed " copy to system clipboard

" Vim. Live it. (http://www.tylercipriani.com/vim.html)
inoremap <up> <nop>
vnoremap <up> <nop>
nnoremap <up> <nop>
inoremap <down> <nop>
vnoremap <down> <nop>
nnoremap <down> <nop>
inoremap <left> <nop>
vnoremap <left> <nop>
nnoremap <left> <nop>
inoremap <right> <nop>
vnoremap <right> <nop>
nnoremap <right> <nop>
" B-A-<start>

" -------------------------------------
" Swap files
" -------------------------------------

set noswapfile
set nobackup
set nowb

" -------------------------------------
" Display
" -------------------------------------

set background=light                " also available in dark
colorscheme solarized               " this color scheme is great :)
call togglebg#map("<F5>")           " toggle background
set showcmd                         " display incomplete commands
set ruler                           " display the ruler
set visualbell                      " no annoying noises
set list listchars=tab:\ \ ,trail:· " show tabs and trailing whitespace
set colorcolumn=80                  " show column 80

" -------------------------------------
" Spaces and indentation
" -------------------------------------

set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

" -------------------------------------
" Search
" -------------------------------------

set hlsearch   " highlight matches
set incsearch  " incremental searching
set ignorecase " searches are case insensitive...
set smartcase  " ... unless they contain at least one capital letter

" -------------------------------------
" Keybindings
" -------------------------------------

" Improve split windows movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Paste toggle
set pastetoggle=<F2>

" Remap leader key
let mapleader=","

" Smash escape
inoremap jk <Esc>
inoremap kj <Esc>

" -------------------------------------
" Filetype configuration
" -------------------------------------

" Makefiles
autocmd FileType make setlocal noexpandtab
" Markdown
autocmd BufNewFile,BufRead *.md
      \ if getline(1) == '---' |
      \   let b:liquid_subtype = 'markdown' |
      \   set ft=liquid |
      \ endif

" -------------------------------------
" Plugins configuration
" -------------------------------------

" CtrlP
set wildignore+=*.swp,node_modules\*,.git\*,vendor\*,build\*" exclude from search
