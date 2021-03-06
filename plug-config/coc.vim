let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-actions',
      \ 'coc-sh',
      \ 'coc-lists',
      \ 'coc-emmet',
      \ 'coc-tasks',
      \ 'coc-tsserver',
      \ 'coc-floaterm',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-emoji',
      \ 'coc-cssmodules',
      \ 'coc-yaml',
      \ 'coc-python',
      \ 'coc-pyright',
      \ 'coc-explorer',
      \ 'coc-svg',
      \ 'coc-prettier',
      \ 'coc-vimlsp',
      \ 'coc-xml',
      \ 'coc-yank',
      \ 'coc-json',
      \ 'coc-marketplace',
      \ 'coc-highlight',
      \ 'coc-eslint',
      \ 'coc-git',
      \ 'coc-jest',
      \'coc-vetur'
      \ ]


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" " position. Coc only does snippet and additional edit on confirm.
" " <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
" if exists('*complete_info')
"   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" :
"         \<C-g>u\<CR>"
" else
"   inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

command! -nargs=0 Prettier :CocCommand prettier.formatFile

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

autocmd CursorHold * silent call CocActionAsync('highlight')

" Explorer 
:nmap <space>e :CocCommand explorer<CR>

" hook for explorer window initialized
function! CocExplorerInited(filetype, bufnr)
  " transparent
  call setbufvar(a:bufnr, '&winblend', 10)
endfunction"
