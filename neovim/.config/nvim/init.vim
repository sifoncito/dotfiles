"Aldo R. neovim config

set nocompatible "No lo haga compa 
filetype off
""""""""""""""""""""""""""""""""""
"Plugins 
""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'                                     "better file browsing
Plug 'lilydjwg/colorizer'                                      "colorize text 
Plug 'Yggdroot/indentLine'                                     "show indentlines
Plug 'drewtempelmeyer/palenight.vim'                           "nice colorscheme
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }  "completion framework
Plug 'zchee/deoplete-jedi'                                     "python completion
Plug 'https://github.com/mkitt/tabline.vim'                    "tabs numbers
Plug 'ryanoasis/vim-devicons'                                  "filetype icons
Plug 'majutsushi/tagbar'                                       "tagbar
Plug 'airblade/vim-gitgutter'                                  "git
Plug 'vim-airline/vim-airline'                                 "statusline
Plug 'vim-airline/vim-airline-themes'                          "statusline theme

Plug 'w0rp/ale'

Plug 'Raimondi/delimitMate'

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
call plug#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number
set relativenumber
" Show file stats
set ruler

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" appearance
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1

set termguicolors     " enable true colors support

colorscheme palenight

let g:airline_theme='wombat'




nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>


" Some programming languages work better when 2 spaces for tab is used...
autocmd FileType html,css,sass,scss,javascript setlocal sw=2 sts=2
autocmd FileType json setlocal sw=2 sts=2
autocmd FileType ruby,eruby setlocal sw=2 sts=2
autocmd FileType yaml setlocal sw=2 sts=2


set cursorline
set colorcolumn=80

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tablineclosebutton=1

highlight GitGutterAdd ctermbg=green ctermfg=green
highlight GitGutterRemove ctermbg=red ctermfg=red
highlight GitGutterChange ctermbg=cyan ctermfg=cyan


let g:python_highlight_all = 1


" NERDtree
map <Leader>nt :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=20
let g:deoplete#enable_at_startup = 1

set completeopt+=noinsert
set completeopt-=preview
