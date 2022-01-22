" Sets Ctrl-c to yank visual selection into system clipboard
map <C-c> "cy :call system('xclip -sel clip', @c)<CR>
