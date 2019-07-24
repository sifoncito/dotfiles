"Aldo R. neovim config

source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/basic/basic_conf.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tablineclosebutton=1

highlight GitGutterAdd ctermbg=green ctermfg=green
highlight GitGutterRemove ctermbg=red ctermfg=red
highlight GitGutterChange ctermbg=cyan ctermfg=cyan


let g:python_highlight_all = 1


source $HOME/.config/nvim/plugins/plugin_settings.vim
" NERDtree
"map <Leader>nt :NERDTreeToggle<CR>
"let NERDTreeQuitOnOpen=1
"let NERDTreeWinSize=20

let g:deoplete#enable_at_startup = 1

let g:neodark#background = '#202020'
set completeopt+=noinsert
set completeopt-=preview



