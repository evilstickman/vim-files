filetype plugin on
filetype indent on
syntax on
set autoindent
set term=linux
autocmd VimEnter * wincmd p
:set ts=2
set bs=2
:set tabstop=2
:set shiftwidth=2
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 2
set wildignore+=.git\*,.hg\*,.svn\*
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let highlight def link rubyRspec Function
" set statusline
set laststatus=2
set statusline=[%F]
set statusline+=[POS=%04l,%04v]
set statusline+=[%p%%]
"
set incsearch
set ignorecase
set smartcase
set hlsearch

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
