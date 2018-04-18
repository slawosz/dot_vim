set splitbelow
set splitright

set expandtab
set ts=2
"" ================
"" Ruby stuff
"" ================
"
augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END
au BufNewFile,BufRead *.lmx set filetype=xml
"" ================
"
"
autocmd BufWritePre * :%s/\s\+$//e
au InsertLeave <buffer> update
let mapleader = ","
source ~/.vim/keybindings.vim
source ~/.vim/go.vim
source ~/.vim/ack.vim
source ~/.vim/vundleconf.vim
source ~/.vim/tagbar.vim
runtime macros/matchit.vim


" compatybile with vi
set nocompatible
set backspace=indent,eol,start " allow backspacing over everything in insert mode

set history=500		" keep 500 lines of command line history
set hlsearch
set incsearch " awesome
set hidden " dont need to save buffer when switching to another
let g:rspec_command = "Dispatch zeus rspec {spec}"

filetype off
filetype plugin indent off
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
au BufNewFile,BufRead *.vue set filetype=html

scriptencoding utf-8
set encoding=utf-8

set sw=2
set smarttab
set ignorecase
set smartcase
set laststatus=2  " Always show status line.
set number
set isf+=@-@ " allow @ in paths (usefull in gemsets)
"set gdefault " assume the /g flag on :s substitutions to replace all matches in a line
" Use _ as a word-separator
" set iskeyword-=_
set autoindent " always set autoindenting on
"
"" Edit another file in the same directory as the current file
"" uses expression to extract path from current file's path
""
"" Set the tag file search order

set tags=./tags;
"
"
"
set shiftround " When at 3 spaces and I hit >>, go to 4, not 5.
"
"set nofoldenable " Fuck code folding...
"
"command Q q " Bind :Q to :q
"command Qall qall
"
set statusline+=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

"
"
"" ========================================================================
"" End of things set by me.
"" ========================================================================
"
"" Only do this part when compiled with support for autocommands.
"if has("autocmd")
"
"  " Enable file type detection.
"  " Use the default filetype settings, so that mail gets 'tw' set to 72,
"  " 'cindent' is on in C files, etc.
"  " Also load indent files, to automatically do language-dependent indenting.
"  filetype plugin indent on
"
"  " Put these in an autocmd group, so that we can delete them easily.
"  augroup vimrcEx
"  au!
"
"  " For all text files set 'textwidth' to 78 characters.
"  autocmd FileType text setlocal textwidth=78
"
"  " When editing a file, always jump to the last known cursor position.
"  " Don't do it when the position is invalid or when inside an event handler
"  " (happens when dropping a file on gvim).
"  autocmd BufReadPost *
"    \ if line("'\"") > 0 && line("'\"") <= line("$") |
"    \   exe "normal g`\"" |
"    \ endif
"
"  augroup END
"
"endif " has("autocmd")
"
"

" command-t settings
let g:CommandTMaxHeight = 10
let g:CommandTMatchWindowAtTop = 0
let g:CommandTMatchWindowReverse = 1
let g:CommandTAcceptSelectionTabMap = '<CR>'

" http://vimdoc.sourceforge.net/htmldoc/insert.html#ft-ruby-omni
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" experimental http://vim.wikia.com/wiki/VimTip1599
"highlight ColorColumn ctermbg=darkgrey ctermfg=white guibg=#222
set cc=81

" open quickfix to bottom
autocmd FileType qf wincmd J
" trigger completor in go
let g:completor_go_omni_trigger = '(?:\b[^\W\d]\w*|[\]\)])\.(?:[^\W\d]\w*)?'

colorscheme molokai
