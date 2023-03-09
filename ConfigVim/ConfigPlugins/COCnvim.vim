
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

set hidden
set nocompatible

au VimEnter * CocStart
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
imap <leader>in <leader>nnv<C-g><leader>in
let g:coc_snippet_next = '<leader>in'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
imap <leader>it <leader>nnv<C-g><leader>it
let g:coc_snippet_prev = '<leader>it'

" Use css on scss files
autocmd FileType scss setl iskeyword+=@-@
