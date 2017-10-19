call pathogen#infect()
call pathogen#helptags()
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-cucumber'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'mileszs/ack.vim'
call vundle#end()

" filetypes
filetype on               
filetype plugin on
filetype indent on

let python_highlight_all=1
syntax on
set t_Co=256
set background=dark
colorscheme jellybeans

" settings 
set nocompatible                " don't hack around for vi compatiblity
set mouse=a                     " because i'm lame
set nu                          " line numbers
set backup                      " do backups
set backupdir=~/.vimbackup      " put backups in one place
set directory=~/.vimtmp         " put tmp files in one place
set dir=~/.vimtmp               " for backup swaps
set noswapfile
set hidden                      " hide buffers, rather than closing them
set modelines=0                 " don't allow modelines
set smartindent                 " let vim indent for you
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indent on autoindenting
set tabstop=2                   " two-space tabs
set shiftwidth=2                " two-space tabs
set expandtab                   " use spaces for tabs
set incsearch                   " show search matches while you type
set ignorecase                  " ignore case when searching
set smartcase                   " ignore search case if all lowercase
set hlsearch                    " highlight search terms
set gdefault                    " default to global replace
set backspace=eol,start,indent  " allow backspace to delete linebreaks
set scrolloff=10                " have 3 lines of offset (or buffer) when scrolling
set sidescroll=10               " 3 line buffer horizontally as well
set wildmenu                    " make tab completion for files/buffers act like bash
set wildmode=list:full          " show a list when pressing tab and complete first full match
set pastetoggle=<F2>            " toggle paste indentation w/ F2
set clipboard+=unnamed          " share clipboard
set clipboard=unnamed
set more                        " page on extended output
set ttyfast                     " smoother redraws
set lazyredraw                  " do not redraw while executing macros
set showcmd                     " show command /eing typed
set tags=~/.tags                " grab tags directory, all the way up to root
set title                       " set the title

let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 2
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \}

let g:ctrlp_max_files =0
let g:ctrlp_max_depth =1000
let g:ctrlp_max_height = 50
let g:ctrlp_clear_cache_on_exit = 0
" set statusline
set laststatus=2
set statusline=[%F]
set statusline+=[POS=%04l,%04v]
set statusline+=[%p%%]

set ruler
:set laststatus=2


if has('autocmd')
  au filetype php set tabstop=4                 " four spaces for PHP tabs
  au filetype php set shiftwidth=4              " four spaces for PHP tabs
  au filetype ruby set list                     " list chars in ruby
  au filetype ruby set listchars=tab:>-,trail:- " list trailing spaces + all tabs
  au filetype ruby set list                     " list chars in js
  au filetype js set listchars=tab:>-,trail:-   " list trailing spaces + all tabs

  au BufNewFile,BufRead *.ejs set filetype=html " ejs suppport
  au BufNewFile,BufRead *.tpl set filetype=ruby " tpl support for ruby
  au BufRead,BufNewFile *.todo setfiletype todo 
  au BufRead,BufNewFile Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby
endif


match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
