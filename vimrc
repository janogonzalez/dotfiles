"" Based in http://mislav.uniqpath.com/2011/12/vim-revisited/

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8

"set background=light            " also available in dark
"colorscheme solarized           " this color scheme is great :)
"call togglebg#map("<F5>")       " toggle background

set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

set ruler                       " display the ruler
set visualbell                  " no annoying noises

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

set list listchars=tab:\ \ ,trail:· " show tabs and trailing whitespace
set colorcolumn=80              " Show column 80

set clipboard=unnamed           " Copy to system clipboard

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Improve split windows movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" Paste toggle
set pastetoggle=<F2>

"" Remap leader key
let mapleader=","

"" Smash escape
inoremap jk <Esc>
inoremap kj <Esc>

"" Makefiles
autocmd FileType make setlocal noexpandtab
"" PHP Files
autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab
"" Markdown
autocmd BufNewFile,BufRead *.md
      \ if getline(1) == '---' |
      \   let b:liquid_subtype = 'markdown' |
      \   set ft=liquid |
      \ endif
"" Plugins
""-------------------------------------------------------------------------------------

"" Ack
map <leader>a :Ack<space>

"" CtrlP
set wildignore+=*.swp,node_modules\*,.git\* " Exclude from search
