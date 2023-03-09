vmap <leader>.<tab> <leader>nn:NeoTreeFocus<CR>
vmap <leader><leader>.<tab> <leader>nn:NeoTreeRevealInSplit<CR>
vmap <leader><tab> <leader>nn:NeoTreeReveal<CR>y<cr>
imap <leader>.<tab> <leader>nn:NeoTreeFocus<CR>
imap <leader><leader>.<tab> <leader>nn:NeoTreeRevealInSplit<CR>
imap <leader><tab> <leader>nn:NeoTreeReveal<CR>y<cr>
"entrar en explorador:
nmap <leader><tab> :NeoTreeReveal<CR>y<cr>
"entrar en explorador raiz
nmap <leader>.<tab> :NeoTreeFocus<CR>
nmap <leader><leader>.<tab> :NeoTreeRevealInSplit<CR>
"mover y editar
nmap <leader>ev <leader>..tabnew ~\vimrc.vim<cr>:Neotree ~\.vim\<cr>y<cr>
nmap <leader>en <leader>..
"buffer
nmap <leader>gx :w<cr>:tabnew ~\appdata\local\tempvim<cr>:NeoTreeReveal<cr><c-w>w:q!<cr>
"abrir explorador a la izquierda:
cmap <C-a> NeoTreeFocus<CR>
"Encontramis archivo
cmap <C-s> NeoTreeReveal c:\

"Configuracion Nerdtree git
