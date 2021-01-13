" My custom vim configuration on top of the install ones
" from https://github.com/amix/vimrc

" Yanking to OS clipboard
set clipboard=unnamed

" remap jj to esc
inoremap jj <ESC>

" making the cursor diff in each mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

