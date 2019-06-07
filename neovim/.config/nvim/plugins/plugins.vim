""""""""""""""""""""""""""""""""""
"Plugins 
""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'                                     "better file browsing
Plug 'lilydjwg/colorizer'                                      "colorize text 
Plug 'Yggdroot/indentLine'                                     "show indentlines
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }  "completion framework
Plug 'zchee/deoplete-jedi'                                     "python completion
Plug 'https://github.com/mkitt/tabline.vim'                    "tabs numbers
Plug 'ryanoasis/vim-devicons'                                  "filetype icons
Plug 'majutsushi/tagbar'                                       "tagbar
Plug 'airblade/vim-gitgutter'                                  "git

Plug 'hzchirs/vim-material'
Plug 'jacoborus/tender.vim'


Plug 'w0rp/ale'

Plug 'Raimondi/delimitMate'

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
call plug#end()

