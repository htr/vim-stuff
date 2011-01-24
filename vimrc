"pathogen
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"gui settings
set guioptions=-t
if has("gui_macvim")
  set guifont=Inconsolata:h15
  colors vividchalk
elseif has("gui_running")
  colors vividchalk
  set guifont=Terminus\ 13
else
  set background=dark
endif

"encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

"vim-indent-guides
let g:indent_guides_start_level = 2


"useful shortcuts
map <leader>e :e ~/.vimrc<CR>
map <leader>s :source ~/.vimrc<CR>

map <C-p> :tabp<CR>
map <C-n> :tabn<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"fuzzyfinder shortcuts..
map <C-f> :FufFile<CR>
map <C-b> :FufBuffer<CR>

"basic stuff
filetype plugin indent on
syntax on
set directory=~/.vimswp
set visualbell
let g:pyflakes_use_quickfix = 0
set laststatus=2
set statusline=%f\ [%{strlen(&ft)?&ft:'none'},%{&fileformat}]\ %h%1*%m%r%w%0*%=%-14.(%l,%c%V%)\ %<%P

"python
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with omnifunc=pythoncomplete#Complete
let python_highlight_all=1
let python_highlight_exceptions=0
let python_highlight_builtins=0

"haskell
autocmd FileType haskell setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

"ruby
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 omnifunc=rubycomplete#Complete

"css
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 omnifunc=csscomplete#CompleteCSS

"java
autocmd FileType java setlocal shiftwidth=4 tabstop=4 softtabstop=4

"vim
autocmd FileType vim setlocal expandtab shiftwidth=2 tabstop=8 softtabstop=2

"js
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 omnifunc=javascriptcomplete#CompleteJS

"c,cpp
autocmd FileType c,cpp setlocal tabstop=8 shiftwidth=8 smarttab cindent autoindent textwidth=80 formatoptions+=l
"

autocmd BufRead buildfile set filetype=ruby
autocmd BufRead Gemfile set filetype=ruby

set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=django

