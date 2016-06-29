set nocompatible              " be iMproved, required
filetype off                  " required

"let g:loaded_youcompleteme = 1
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required
highlight Pmenu ctermfg=black ctermbg=white guifg=black guibg=white

try
    colorscheme mod8
catch
endtry

execute pathogen#infect()
set noswapfile
set cursorline
hi CursorColumn ctermfg=White ctermbg=darkgrey term=bold guifg=black guibg=blue gui=bold cterm=NONE
hi CursorLine ctermfg=White ctermbg=darkgrey term=bold guifg=black guibg=blue gui=bold cterm=NONE
set cursorcolumn
set scrolloff=15
set number
syntax enable
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set runtimepath^=~/.vim/bundle/ctrlp.vim

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

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
