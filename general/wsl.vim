 "  __          ___          _____             __ 
 "  \ \        / (_)        / ____|           / _|
 "   \ \  /\  / / _ _ __   | |     ___  _ __ | |_ 
 "    \ \/  \/ / | | '_ \  | |    / _ \| '_ \|  _|
 "     \  /\  /  | | | | | | |___| (_) | | | | |  
 "      \/  \/   |_|_| |_|  \_____\___/|_| |_|_|  

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
  augroup WSLYank
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
  augroup END
endif



