" rspec
map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rn :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>

" CommandT
" map <Leader>b ;CommandTBuffer<CR>
" map <Leader>t ;CommandT<CR>

map <Leader>w <C-w>w
map <Leader>nl :nohl<CR>
imap <C-s> <esc>:w<CR>

map <Leader>e :t <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>


map <Leader>b :CtrlPBuffer<CR>
map <Leader>p :CtrlP<CR>
" buffers
map <Leader>db :bd<CR>
map <unique> <Leader>al :ball<CR>
map <unique> <C-j> <C-w>j
map <unique> <C-l> <C-w>l
map <unique> <C-h> <C-w>h
map <unique> <C-k> <C-w>k
map <unique> <Leader><Leader> :ZoomWin<CR>
"map <unique> <C-l> :bp<CR>
"map <unique> <C-h> :bn<CR>
map <unique> <Leader>j :bp<CR>
map <unique> <Leader>k :bn<CR>
map <unique> <Leader>h :tabp<CR>
map <unique> <Leader>l :tabn<CR>
map <unique> <Leader>sp :sbp<CR>
map <unique> <Leader>sn :sbn<CR>
" map <unique> <Leader>l <C-^><CR>
map <unique> <Leader>vs :vsplit<CR>

" ruby and rails relative navigation
map <unique> <Leader>r :R<CR>
map <unique> <Leader>rs :RS<CR>
map <unique> <Leader>rv :RV<CR>
map <unique> <Leader>a :A<CR>
map <unique> <Leader>as :AS<CR>
map <unique> <Leader>av :AV<CR>

map <unique> <Leader><Space> i<Space><Esc>
map <unique> <Leader>o o<Esc>

nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <Leader>sl :s/\<<C-r><C-w>\>//g<Left><Left>

let g:UltiSnipsExpandTrigger="<Leader>s"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

nnoremap n nzz
nnoremap N Nzz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

" folding in ruby
map <unique> <Leader>fr :g/\s*it /normal jvirzf<CR> " uses http://vimcasts.org/blog/2010/12/a-text-object-for-ruby-blocks/

nnoremap <S-K> a<CR><Esc>k$ " Opposite of Shift-J
map <C-s> <esc>:w<CR>

" extreme!
nore <Space> :
" nore : ;
inoremap jk <C-[>
cmap jk <C-[>

" do something with range with last changed and selected text

" let's be more productive!
" inoremap <BS> <nop>
" cnoremap <BS> <nop>

" inoremap <Enter> <nop>
" cnoremap <Enter> <nop>

" Unused but may be usefull

"map <Leader>def :/def
vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
