set nocp
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'git://github.com/tpope/vim-surround.git'
Bundle 'tComment'
Bundle 'Align'
Bundle 'easytags.vim'
Bundle 'muttrc.vim'
Bundle 'desert-warm-256'
Bundle 'Syntastic'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'molokai'
Bundle 'gmarik/ingretu'
Bundle 'pep8'

" Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'

" tpope/vim-fugitive ?
" nerdtree? 
" delimitmate

"colors molokai

filetype plugin indent on
syntax on
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set autoindent

" gui stuff
if has("gui_running")
  set guifont=Envy\ Code\ R\ 11
  "set guifont=Terminus\ 10
  set guioptions=-t
else
  set background=dark
endif
set wildmenu
set wildignore+=*.o,*.obj,.get,*.pyc,*.hi


"statusline
set laststatus=2

" set list listchars=tab:»·,trail:·    " Show the leading whitespaces
set display=uhex                     " Show unprintables as <xx>


" shortcuts
let mapleader = ","

map <leader>s :source ~/.vimrc<CR>
map <leader>e :e ~/.vimrc<CR>
map <leader>bi :BundleInstall<CR>
map <leader>bu :BundleInstall!<CR>

map <leader>c <c-_><c-_>
map <leader>d :lcd %:p:h<CR>
" map <leader>a= :Align=<CR>

map <C-f> :FufFile<CR>
map <C-b> :FufBuffer<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <C-p> :tabp<CR>
map <C-n> :tabn<CR>

map <C-x><C-k> :bdelete<CR>
map <C-x><C-s> :w<CR>

map <C-\> :FufBufferTag<CR>

map <leader>, :FufTag<CR>

" Prevent highlight being lost on (de)indent.
vnoremap < <gv
vnoremap > >gv

autocmd! bufwritepost .vimrc source ~/.vimrc

let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|class|meta|lock|orig|jar|swp|pyc|pyo)$|/test/data\.|(^|[/\\])\.(hg|git|bzr)($|[/\\])'

"syntastic

let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': ['python','haskell'],
                           \ 'passive_filetypes': [] }
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list  = 2


"easytag

let g:easytags_by_filetype = "~/.vim/tags"

" modes


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

"perl
autocmd FileType perl setlocal tabstop=4 shiftwidth=8 smarttab cindent autoindent expandtab
