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
" Ack
Bundle 'mileszs/ack.vim'
" CtrlP
Bundle 'kien/ctrlp.vim'
" Ruby
Bundle 'vim-ruby/vim-ruby'
" JavaScript
Bundle 'pangloss/vim-javascript'
" Liquid/Markdown
Bundle 'tpope/vim-liquid'
" Solarized color theme
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on " load file type plugins + indentation

" -------------------------------------
" Basic configuration
" -------------------------------------

set encoding=utf-8    " use UTF-8 encoding
syntax enable         " enable syntax recognition
set clipboard=unnamed " copy to system clipboard

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
" Filetype configuration
" -------------------------------------

" Ack
map <leader>a :Ack<space>

" CtrlP
set wildignore+=*.swp,node_modules\*,.git\* " exclude from search
