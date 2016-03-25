set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

execute pathogen#infect()
set noswapfile
set cursorline
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white
set cursorcolumn
set scrolloff=15
set number
syntax enable
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set runtimepath^=~/.vim/bundle/ctrlp.vim

"filetype on           " Enable filetype detection
"filetype indent on    " Enable filetype-specific indenting
"filetype plugin on    " Enable filetype-specific plugins

if has('mouse')
  set mouse=a
endif

map <Space> <Leader>

" Easymotion
map  f <Plug>(easymotion-bd-w)
nmap f <Plug>(easymotion-overwin-w)

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

" The Silver Searcher
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set ai
set si
set wrap

map ; :
map j gj
map k gk
map q <S-LEFT>
map w <S-RIGHT>
map t :tabe<ENTER>
map e <END>
map b <HOME>
map gf <c-w>gf

" Powerline plugin for vim
set rtp+=/Users/omar/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

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
