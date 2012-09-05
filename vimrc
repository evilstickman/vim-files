call pathogen#infect()
call pathogen#runtime_append_all_bundles()

syntax on

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
let g:ctrlp_working_path_mode = 2set wildignore+=*/cabar/*,*/cnu_active_record/*,*/cnuapp_ci/*,*/cnuapp_doc/*,*/cnuapp_env/*
set wildignore+=*/cnuapp_qa/*,*/cnuapp_rack/*,*/cnu_bloom/*,*/cnu_brand/*,*/cnu_cluster/*
set wildignore+=*/cnu_config/*,*/cnu_content/*,*/cnu_database/*,*/cnu_gems/*,*/cnu_ivr/*
set wildignore+=*/cnu_ldap/*,*/cnu_logger/*,*/cnu_memcache/*,*/cnu_perf/*
set wildignore+=*/cnu_pg/*,*/cnu_product_offering/*,*/cnu_rails_app/*,*/cnu_regexp/*
set wildignore+=*/cnu_ruby_build/*,*/cnu_ruby_lib/*,*/cnu_scm/*
set wildignore+=*/cnu_selenium/*,*/cnu_service/*,*/cnu_space/*,*/cnu_test/*,*/contenter_api/*
set wildignore+=*/cookbooks/*,*/db_global/*,*/doc/*,*/enf_app/*,*/enf_log/*,*/lsws-3.3.14/*
set wildignore+=*/mod_rails/*,*/rails-1.2/*,*/red_steak/*,*/screenshots/*,*/shout_trace/*
set wildignore+=*/sol_api/*,*/trick_serial/*,*/waffles/*,*/wtf/*
set wildignore+=*static/CACHE/css/*
"stuff in cnuapp
set wildignore+=*/cnuapp/admin/*,*/cnuapp/apache/*,*/cnuapp/bin/*
set wildignore+=*/cnuapp/debian/*,*/cnuapp/gems/*,*/cnuapp/gui/*,*/cnuapp/include/*
set wildignore+=*/cnuapp/lib/*,*/cnuapp/locproot/*,*/cnuapp/lsws/*,*/cnuapp/noderoot/*
set wildignore+=*/cnuapp/plugins/*,*/cnuapp/queries/*,*/cnuapp/Rakefile/*,*/cnuapp/Rakefile.US/*
set wildignore+=*/cnuapp/result.GB/*,*/cnuapp/result.GB.fail/*,*/cnuapp/result.GB.last/*
set wildignore+=*/cnuapp/result.GB.pass/*,*/cnuapp/src/*
set wildignore+=*/cnuapp/tmp/*,*/cnuapp/tools/*,*/cnuapp/typeroot/*,*/cnuapp/var/*
set wildignore+=*/cnuapp/vendor/*
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \}

let g:ctrlp_max_files =0
let g:ctrlp_max_depth =1000
let g:ctrlp_max_height = 50let g:ctrlp_clear_cache_on_exit = 0
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let highlight def link rubyRspec Function
" set statusline
set laststatus=2
set statusline=[%F]
set statusline+=[POS=%04l,%04v]
set statusline+=[%p%%]

set ruler
:set laststatus=2

" filetypes
filetype on               
filetype plugin on
filetype indent on

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
endif

match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
