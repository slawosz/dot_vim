" rspec
map <Leader>rf :SweetVimRspecRunFile<CR>
map <Leader>rl :SweetVimRspecRunFocused<CR>
map <Leader>rr :SweetVimRspecRunPrevious<CR>

" CommandT
" map <Leader>b ;CommandTBuffer<CR>
" map <Leader>t ;CommandT<CR>

map <Leader>w <C-w>w
map <Leader>l :nohl<CR>
imap <C-s> <esc>:w<CR>

map <Leader>e :tabnew <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>


" buffers
map <Leader>bd :tabclose<CR>
map <unique> <Leader>al :ball<CR>
" map <unique> <C-j> <C-w>j
" map <unique> <C-l> <C-w>l
" map <unique> <C-h> <C-w>h
" map <unique> <C-k> <C-w>k
map <unique> <Leader><Leader> :ZoomWin<CR>
map <unique> <C-l> :tabn<CR>
map <unique> <C-h> :tabp<CR>
map <unique> <Leader>j :tabn<CR>
map <unique> <Leader>m :tabp<CR>
map <unique> <Leader>fj :tabm 0<CR>
map <unique> <Leader>fk :tabm 1<CR>
" map <unique> <Leader>l <C-^><CR>
map <unique> <Leader>vs :vsplit<CR>

" ruby and rails relative navigation
map <unique> <Leader>r :RT<CR>
map <unique> <Leader>rs :RTS<CR>
map <unique> <Leader>rv :RTV<CR>
map <unique> <Leader>a :AT<CR>
map <unique> <Leader>as :ATS<CR>
map <unique> <Leader>av :ATV<CR>

map <unique> <Leader><Space> i<Space><Esc>
map <unique> <Leader>o o<Esc>

nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <Leader>sl :s/\<<C-r><C-w>\>//g<Left><Left>

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
inoremap jk <Left><C-[> " may be extreme and unusefull
cmap jk <Left><C-[> " may be extreme and unusefull

" do something with range with last changed and selected text

" let's be more productive!
" inoremap <BS> <nop>
" cnoremap <BS> <nop>

" inoremap <Enter> <nop>
" cnoremap <Enter> <nop>

" Unused but may be usefull

"map <Leader>def :/def
"map <Leader>cla :/class
"map <Leader>cc :!cucumber %<CR>
"map <Leader>co :TComment<CR>
"map <Leader>d odebugger<cr>puts 'debugger'<esc>:w<cr>
"map <Leader>gac :Gcommit -m -a ""<LEFT>
"map <Leader>gc :Gcommit -m ""<LEFT>
"map <Leader>gs :Gstatus<CR>
"map <Leader>f :sp spec/factories.rb<CR>
"map <Leader>fa :sp test/factories.rb<CR>
"map <Leader>l :!ruby <C-r>% \| less<CR>
"map <Leader>m :Rmodel
"map <Leader>n ,w,t
"map <Leader>o ?def <CR>:nohl<CR>w"zy$:!ruby -I"test" <C-r>% -n <C-r>z<CR>
"map <Leader>p :set paste<CR>i
"map <Leader>rb :Rake!<CR>
"map <Leader>rw :%s/\s\+$//
"map <Leader>sc :sp db/schema.rb<cr>
"map <Leader>sm :RSmodel
"map <Leader>su :RSunittest
"map <Leader>sv :RSview
"map <Leader>t :!ruby -I"test" -I"spec" %<CR>
"map <Leader>u :Runittest
"map <Leader>vc :RVcontroller
"map <Leader>vf :RVfunctional
"map <Leader>vi :tabe ~/.vimrc<CR>
"map <Leader>vu :RVunittest
"map <Leader>vm :RVmodel
"map <Leader>vv :RVview
"map <C-t> <esc>:tabnew<CR>
"map <C-x> <C-w>c
"map <C-n> :cn<CR>
"map <C-p> :cp<CR>
"imap <C-l> <Space>=><Space>
vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
