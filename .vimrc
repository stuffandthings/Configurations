set noswapfile
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white
set cursorcolumn
set number
syntax enable
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set runtimepath^=~/.vim/bundle/ctrlp.vim

if has('mouse')
  set mouse=a
endif

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

try
    colorscheme mod8
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set ai
set si
set wrap

map j gj
map k gk

set rtp+=/Users/omar/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

function! CmdLine(str)
  exe "menu Foo.Bar :" . a:str
  emenu Foo.Bar
  unmenu Foo
endfunction 

function! HasPaste()
  if &paste
     return 'PASTE MODE  '
  endif
     return ''
endfunction

" Ctrl-p
let g:ctrlp_custom_ignore = 'node_modules/|\.DS_Store/|\.git/|vendor/|tmp/'
let g:ctrlp_max_files = 0
let g:ctrlp_use_caching = 0
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:25,results:50'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g "" --ignore node_modules --ignore .DS_Store --ignore .git --ignore vendor --ignore tmp'
let g:ctrlp_working_path_mode = 'a'
