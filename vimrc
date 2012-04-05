" This is initialze setting from pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
filetype plugin indent on

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
"" ================
"
"
autocmd BufWritePre * :%s/\s\+$//e
au InsertLeave <buffer> update
let mapleader = ","
source ~/.vim/keybindings.vim
runtime macros/matchit.vim

" compatybile with vi
set nocompatible
set backspace=indent,eol,start " allow backspacing over everything in insert mode

set history=500		" keep 500 lines of command line history
set hlsearch
set incsearch " awesome
set hidden " dont need to save buffer when switching to another
"set ruler		" show the cursor position all the time
"set showcmd		" display incomplete commands
"set showmatch
"set nowrap
" set backupdir=~/.tmp
" set directory=~/.tmp " Don't clutter my dirs up with swp and tmp files
"set autoread
"set wmh=0
"set viminfo+=!
"set guioptions-=T
"set guifont=Triskweline_10:h10
"set et
set sw=2
set smarttab
"set noincsearch
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
"" Use Ack instead of grep
"set grepprg=ack
"
"" Make the omnicomplete text readable
":highlight PmenuSel ctermfg=black
"
"" Fuzzy finder: ignore stuff that can't be opened, and generated files
"let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"
"
"" Highlight the status line
"highlight StatusLine ctermfg=blue ctermbg=yellow
"
"" Format xml files
"au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
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
if $COLORTERM == 'gnome-terminal'
  set term=gnome-256color
  colorscheme railscasts
else
  colorscheme default
endif

" command-t settings
let g:CommandTMaxHeight = 10
let g:CommandTMatchWindowAtTop = 0
let g:CommandTMatchWindowReverse = 1
let g:CommandTAcceptSelectionTabMap = '<CR>'

" http://vimdoc.sourceforge.net/htmldoc/insert.html#ft-ruby-omni
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" experimental https://wincent.com/blog/running-rspec-specs-from-inside-vim
function! RunSpec(command)
  " TODO: handle args such as --tag focus here, or make a separate command for it
  if a:command == ''
    let dir = 'spec'
  else
    let dir = a:command
  endif
  cexpr system("b/rspec -r spec/support/vim_formatter.rb -f RSpec::Core::Formatters::VimFormatter " . dir)
  cw
endfunction
command! -nargs=? -complete=file Spec call RunSpec(<q-args>)
" map <leader>s :Spec<space>

" experimental http://vim.wikia.com/wiki/VimTip1599
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:    ' . a:cmdline)
  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  1
endfunction
highlight ColorColumn ctermbg=darkgrey ctermfg=white guibg=#222
set cc=81
