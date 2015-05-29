map <buffer> <leader>f :w <CR> :call VimuxRunCommand("clear; DB=true rspec -fd " . expand("%p"))<CR>
map <buffer> <leader>R :w <CR> :call VimuxRunCommand("clear; rspec " . expand("%p") . ":" . line(".")) <CR>
map <buffer> <leader>r :w <CR> :call VimuxRunCommand("clear; rake")<CR>
map <buffer> <leader>dr :w <CR> :call VimuxRunCommand("clear; DB=true rspec -fd " . expand("%p"))<CR>
