"" Based in http://mislav.uniqpath.com/2011/12/vim-revisited/

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8

"" Load Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

set background=light            " also available in dark
colorscheme solarized           " this color scheme is great :)

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

"" Makefiles
autocmd FileType make setlocal noexpandtab

"" Tidying
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
"" Strips trailing whitespace
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
"" Applies formatting
nmap _= :call Preserve("normal gg=G")<CR>

"" Plugins
""-------------------------------------------------------------------------------------

"" Ack
map <leader>a :Ack<space>
