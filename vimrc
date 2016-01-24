" -------------------------------------
" Vundle
" -------------------------------------

set nocompatible " no compatibility with legacy vi, it's 2012
filetype off     " required for Vundle

" initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage itself
Plugin 'gmarik/Vundle.vim'
" CtrlP
Plugin 'kien/ctrlp.vim'
" Ruby
Plugin 'vim-ruby/vim-ruby'
" JavaScript
Plugin 'pangloss/vim-javascript'
" Clojure
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
" Scala
Plugin 'derekwyatt/vim-scala'
" Liquid/Markdown
Plugin 'tpope/vim-liquid'
" Color Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
" Text Objects
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-surround'
" Tmux
Plugin 'christoomey/vim-tmux-navigator'
" Rust
Plugin 'wting/rust.vim'
" Repeat
Plugin 'tpope/vim-repeat'
" Git
Plugin 'tpope/vim-fugitive'
" Vim Airline
Plugin 'bling/vim-airline'
" Ag
Plugin 'rking/ag.vim'
" Dracula
Plugin 'sinakarimi/dracula-theme', {'rtp': 'vim/'}

" finish Vundle initialization
call vundle#end()
filetype plugin indent on " load file type plugins + indentation

if !has('nvim')
  source $VIMRUNTIME/macros/matchit.vim " Enable matchit
end

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

set background=dark                 " also available in light
colorscheme dracula                 " this color scheme is great :)
call togglebg#map("<F5>")           " toggle background
set showcmd                         " display incomplete commands
set ruler                           " display the ruler
set visualbell                      " no annoying noises
set list listchars=tab:\ \ ,trail:· " show tabs and trailing whitespace
set colorcolumn=80                  " show column 80
set relativenumber                  " show relative line numbers
set number                          " ...but show the current line number
set laststatus=2                    " always show the status line
set wildmenu                        " command line completion menu

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
set wildignore+=*.swp,node_modules\*,.git\*,build\*,target\*" exclude from search
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'r'

" Airline (copied from
" https://github.com/lucapette/vimfiles/blob/master/vim/settings/plugins.vim)
let g:airline_symbols =  get(g:, 'airline_symbols', {})

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_section_c = '%F'
