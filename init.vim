" -------------------------------------
" Plugins
" -------------------------------------

call plug#begin()

" neovim-fuzzy
Plug 'cloudhead/neovim-fuzzy'
" Languages
Plug 'fatih/vim-go'
Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'
" Color Theme
Plug 'chriskempson/base16-vim'
" Text Objects
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'tpope/vim-surround'
" Tmux
Plug 'christoomey/vim-tmux-navigator'
" Repeat
Plug 'tpope/vim-repeat'
" Git
Plug 'tpope/vim-fugitive'
" Vim Airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" -------------------------------------
" Basic configuration
" -------------------------------------

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

colorscheme base16-solarized-light        " this color scheme is great :)
set visualbell                            " no annoying noises
set list listchars=tab:▸▸,trail:·,nbsp:+  " show tabs and trailing whitespace
set colorcolumn=80                        " show column 80
set relativenumber                        " show relative line numbers
set number                                " ...but show the current line number

" -------------------------------------
" Spaces and indentation
" -------------------------------------

set nowrap                 " don't wrap lines
set tabstop=2 shiftwidth=2 " a tab is two spaces (or set this to 4)
set expandtab              " use spaces, not tabs (optional)

" -------------------------------------
" Search
" -------------------------------------

set ignorecase " searches are case insensitive...
set smartcase  " ...unless they contain at least one capital letter

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
autocmd FileType make setlocal noexpandtab listchars=tab:\ \ ,trail:·,nbsp:+
autocmd FileType go setlocal noexpandtab listchars=tab:\ \ ,trail:·,nbsp:+

" -------------------------------------
" Plugins configuration
" -------------------------------------

" neovim-fuzzy
set wildignore+=*.swp,node_modules\*,.git\*,build\*,target\*" exclude from search
nnoremap <C-p> :FuzzyOpen<CR>

" Airline (copied from
" https://github.com/lucapette/vimfiles/blob/master/vim/settings/plugins.vim)
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

" Import on save
let g:go_fmt_command = "goimports"
