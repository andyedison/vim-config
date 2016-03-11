"
" Andy Edison .vimrc
"

"""""" Loading Plugins with Pathogen
execute pathogen#infect()


"""""" APPEARANCE

" for iTerm2
set term=xterm-256color

" color scheme
filetype plugin indent on
syntax on
""colorscheme darkspectrum2
 colorscheme Tomorrow-Night
""colorscheme Tomorrow-Night-Eighties

" font
set guifont=Courier\ New:h12

" line numbers
set number

" match parenthesis
set showmatch

" wrapping
" mess with this more later http://vim.wikia.com/wiki/Automatic_word_wrapping
set colorcolumn=90



 """""" INTERACTION

" set new leader key
let mapleader=","

" reload vimrc without restarting vim
map <leader>s :source ~/.vimrc<CR>

" highlighting while searching
set hlsearch
" cancel search highlighting
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

