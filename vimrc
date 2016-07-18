"
"  Andy Edison .vimrc
"

"""""" Loading Plugins with Pathogen
call pathogen#infect()


"""""" APPEARANCE

" for iTerm2
"set term=xterm-256color

" color scheme
filetype plugin on
filetype indent on
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

" indenting settings
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
" set smartindent
set autoindent

" backspace behavior
set backspace=start,indent,eol

"Makes current line cursor is on highlighted
set cul 

 """""" INTERACTION

" set new leader key
let mapleader=","

" reload vimrc without restarting vim
map <leader>s :source ~/.vimrc<CR>

" highlighting while searching
set hlsearch
" cancel search highlighting
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

"switching between tabs
noremap <C-Tab> :tabn<CR>
noremap <C-S-Tab> :tabp<CR>

"map F2 to toggle wrapping
"nnoremap <F2> :set nowrap! <CR>


"
" golang and vim-go related
"

" autosaves when calling :make which vim-go does
set autowrite

" make it easier to jump between errors in quickfix window
map <C-n> :cn<CR>
map <C-m> :cp<CR>
nnoremap <leader>a :cclose<CR>

" shortcuts for building and running go programs
" autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
    if l:file =~# '^\f\+_test\.go$'
      call go#cmd#Test(0, 1)
    elseif l:file =~# '^\f\+\.go$'
      call go#cmd#Build(0)
    endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
                
