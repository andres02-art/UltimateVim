"Leader comandos personalizado
"https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)#

let mapleader=','

"navegacion en modo insertar {{{

"Eliminar C-c:
imap <C-c> <nop>
"Pegar del portapapeles:
imap <leader>ip <leader>nnpa
imap <leader>iP <leader>nnPa
"archivar texto:
imap <leader>k <leader>nn:w<CR>i
imap <leader>K <leader>:w<CR>i
imap <leader>q <leader>nn:q!<CR>
imap <leader>Q <leader>nn:q!<CR>
imap <C-s> <leader>nn:q<CR>
"modo insert {{{

imap <leader>il <leader>nndd0pi
imap <leader>ij <leader>nnVypi
imap <leader>ih <leader>nndd0kPi
imap <leader>ik <leader>nnVyPi
imap <leader>ia <leader>nnA
imap <leader>ii <leader>nnI
imap <leader>ib <leader>nnbi
imap <leader>iw <leader>nnebwi
imap <leader>iW <leader>nneBWi
imap <leader>iB <leader>nnBi
imap <leader>io <leader>nnoi
imap <leader>iO <leader>nnOi

"}}}
"modo eliminar {{{

imap <leader>dd <leader>nnlddi
imap <leader>dw <leader>nnlebdwi
imap <leader>db <leader>nnle2bdwi
imap <leader>dB <leader>nnlE2BdWi
imap <leader>dW <leader>nnlEBdWi
imap <leader>da <leader>nnldbi
imap <leader>di <leader>nnldwi
imap <leader>d´ <leader>nnld{i
imap <leader>dç <leader>nnld}i
imap <leader>d{ <leader>nnl{d{i
imap <leader>d} <leader>nnl}d}i
imap <leader>dp <leader>nnl{d}
imap <leader>d<leader> <leader>nnlxi
imap <leader>d. <leader>nnlXi
imap <leader>dc <leader>nnlCi
imap <leader>dC <leader>nnlc0i
imap <leader>dh <leader>nnl:GRemove

"}}}
"movimiento entre buffers:
imap <C-d> <leader>nn<C-w>li
imap <C-w> <leader>nn<C-w>ki
imap <C-s> <leader>nn<C-w>ji
imap <C-a> <leader>nn<C-w>hi
"desplazamiento
imap <M-l> <leader>nnla
imap <M-k> <leader>nnka
imap <M-j> <leader>nnja
imap <M-h> <leader>nni
"modo pliegue {{

imap <leader>zf <leader>nnzfi
imap <leader>zc <leader>nnzci
imap <leader>zo <leader>nnzoi
imap <leader>za <leader>nnzai
imap <leader>zr <leader>nnzRi
imap <leader>zm <leader>nnzMi
imap <leader>zi <leader>nnzii

"}}
"modo replace {{{

imap <leader>rr <leader>nnR

"}}}
"modo visual {{{

imap <leader>vv <leader>nnlv
imap <leader>vw <leader>nnlebvw
imap <leader>ve <leader>nnlebve
imap <leader>vb <leader>nnle2bve
imap <leader>vW <leader>nnlEBvW
imap <leader>vE <leader>nnlEBvE
imap <leader>vB <leader>nnlE2BvE
imap <leader>vp <leader>nnl{v}
imap <leader>vq <leader>nnl<C-Q>
imap <leader>vg <leader>nnlv<C-g>
imap <leader>va vb
imap <leader>vi vw
imap <leader>v´ v{
imap <leader>vç v}
imap <leader>v{ <leader>nnl{v{
imap <leader>v} <leader>nnl}v}

"}}}
"modo normal {{{

imap <leader>nn <Esc>
imap <leader>nh <leader>nne2b
imap <leader>nl <leader>nnew
imap <leader>nb <leader>nnE2B
imap <leader>nW <leader>nnBE
imap <leader>nw <leader>nnEW
imap <leader>nB <leader>nn2BE
imap <leader>nH <leader>nn0
imap <leader>nL <leader>nn$
imap <leader>nv <leader>nnV

"}}}
"modo comando {{{

imap <leader>.. <leader>nn:
imap <leader>.S <leader>nn:%s:
imap <leader>.s <leader>nn:s:
imap <leader>.g <leader>nn:g:
imap <leader>.G <leader>nn:%g:
imap <leader>.<F1> <leader>nn:h<tab>
imap <leader>.F <leader>nn:Filetypes<CR>
imap <leader>.f <leader>nn:/
imap <leader>.<C-s> <leader>nn:split<CR>
imap <leader>.<C-v> <leader>nn:vsplit<CR>
imap <leader>.i <leader>nn:tabn<CR>
imap <leader>.p <leader>nn:tabp<CR>
imap <leader>.% <leader>nn:source %<CR>
imap <leader>.m <leader>nn:
imap <leader>.t <cmd>tabnew split<cr>:terminal<cr>i


"}}}
"modo operativo {{{

imap <leader>o <C-o>

"}}}
"instancias rapidas:
imap <leader>tt <leader>nn<leader>.<C-s>:split<cr>:terminal<CR><C-w>x:resize +12<CR><C-w>wi
imap <leader>tT <leader>nn<leader>.<C-s>:vsplit<cr>:terminal<CR><C-w>x:vertical resize +18<CR><C-w>wi
imap <leader>ts :split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wisass
imap <leader>tp :split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wiphp
imap <leader>tc :split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wicomposer
imap <leader>tn :split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>winpm
imap <leader>tj :split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wijava
imap <leader>f <leader>nn:<C-s>
imap <leader>F <leader>nn:/
imap <leader><C-s> <leader>nn:split
imap <leader><C-v> <leader>nn:vsplit
"liGea rapida:
imap <S-tab> <leader>nn0xx
"Avanzar paginas:
imap <M-b> <C-o><S-up>
imap <M-w> <C-o><S-down>
"movimiento entre tablas:
imap <leader>ev <leader>nn<leader>ev
imap <leader>en <leader>nn<leader>en
"movimiento de bufers {{{

imap <leader>gn <leader>nn:w!<CR>:bn<CR>ggi
imap <leader>gp <leader>nn:w!<CR>:bp<CR>ggi
imap <leader>gq <cmd>bdelete<CR>
imap <leader>gx <leader>nn:w<cr>:tabnew ~\appdata\local\tempvim<cr>:NERDTreeVCS<cr><c-w>w:q!<cr>
" The default vimrc file.
"
imap <leader>gw <leader>nn<C-w><C-w>
imap <leader>gh <leader>nn<C-w>h
imap <leader>gl <leader>nn<C-w>l
imap <leader>gk <leader>nn<C-w>k
imap <leader>gj <leader>nn<C-w>j
imap <leader>gt <leader>nn<leader>gt
imap <leader>ngh <cmd>vsplit<cr><c-w><c-x><leader>nngf
imap <leader>ngl <cmd>vsplit<cr><leader>gl<leader>nngf
imap <leader>ngk <cmd>split<cr><c-w><c-x><leader>nngf
imap <leader>ngj <cmd>split<cr><leader>gj<leader>nngf

"}}}
"atajos de bufers {{{

imap <leader>bn <leader>nn:w!<CR>:bn<CR>ggi
imap <leader>bn <leader>nn:w!<CR>:bn<CR>ggi
imap <leader>bd <leader>nn:w!<CR>:bdelete<CR>gg

"}}}
"eliminar palabras:
imap <C-e> <leader>nndwi
imap <C-q> <leader>nndbi
imap <M-q> <leader>nne2bdwi
imap <M-e> <leader>nnewdwi
imap <C-x> <leader>nnlxi

"}}}

"navegacion en modo normal {{{

"guardar y actualizar archivo:
nmap <leader>k :w<CR>
nmap <leader>q :q!<CR>
nmap <leader>Q :q!<cr>
nmap <C-s> :q<CR>
nmap <leader>nn <Esc><Esc>
"modo operativo

"salto de linea:
nmap <leader>r i<end><Cr><C-c>
"una linea hacia abajo
nmap <C-j> dd0p
"una linea hacia arriba:
nmap <C-k> dd0kP
"ninguna accion en la flecha:
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>
"aumento y decremento de lineas(buffers):
nmap <up> :resize +5<CR>
nmap <down> :resize -5<CR>
nmap <left> :vertical resize -5<CR>
nmap <right> :vertical resize +5<Cr>
nmap <leader><up> :resize +10<CR>
nmap <leader><down> :resize -10<CR>
nmap <leader><left> :vertical resize -10<CR>
nmap <leader><right> :vertical resize +10<Cr>
"duplicar linea:
nmap <C-h> Yp
nmap <C-l> YP
"linea rapida
nmap <S-tab> 0xx
"Avanzar paginas:
nmap <M-b> <C-c><S-up>
nmap <M-w> <C-c><S-down>
"movimiento entre tablas:
nmap <M-i> <C-c>:tabp<CR>gg
nmap <M-d> <C-c>:tabn<CR>gg
nmap <M-c> <C-c>:tabnew
"modo comando {{{

nmap <leader>.. :
nmap <leader>.S :%s:
nmap <leader>.s :s:
nmap <leader>.g :g:
nmap <leader>.G :%g:
nmap <leader>.<F1> :h<tab>
nmap <leader>.F :Filetypes<CR>
nmap <leader>.f :/
nmap <leader>.<C-s> :split<CR>
nmap <leader>.<C-v> :vsplit<CR>
nmap <leader>.i :tabn<CR>
nmap <leader>.p :tabp<CR>
nmap <leader>.% :source %<CR>
nmap <leader>.m :
nmap <leader>.t <cmd>tabnew split<cr>:terminal<cr>i

"}}}
"movimiento de bufers {{{
nmap <leader>gn :w!<CR>:bn<CR>gg
nmap <leader>gq <cmd>bdelete<CR>
nmap <leader>gp :w!<CR>:bp<CR>gg
nmap <leader>gw <C-w><C-w>
nmap <leader>gh <C-w>h
nmap <leader>gl <C-w>l
nmap <leader>gk <C-w>k
nmap <leader>gj <C-w>j
nmap <leader>gt <cmd>tabnew<cr><leader>nn:split<cr>:terminal<cr>i
nmap gh <cmd>vsplit<cr><c-w><c-x>gf
nmap gl <cmd>vsplit<cr><leader>glgf
nmap gk <cmd>split<cr><c-w><c-x>gf
nmap gj <cmd>split<cr><leader>gjgf
"}}}
"
"modo visual {{{

nmap <leader>vv v
nmap <leader>vw ebvw
nmap <leader>ve ebve
nmap <leader>vb e2bve
nmap <leader>vW EBvW
nmap <leader>vE EBvE
nmap <leader>vB E2BvE
nmap <leader>vp {v}
nmap <leader>vq <C-Q>
nmap <leader>vg v<C-g>
nmap <leader>va vb
nmap <leader>vi vw
nmap <leader>v´ v{
nmap <leader>vç v}
nmap <leader>v{ {v{
nmap <leader>v} }v}

"}}}
"modo eliminar {{{

nmap <leader>dd dd
nmap <leader>dw ebdw
nmap <leader>db e2bdw
nmap <leader>dB E2BdW
nmap <leader>dW EBdW
nmap <leader>da db
nmap <leader>di dw
nmap <leader>dp {d}
nmap <leader>d´ d{
nmap <leader>dç d}
nmap <leader>d{ {d{
nmap <leader>d} }d}
nmap <leader>d<leader> x
nmap <leader>d. X
nmap <leader>dc C
nmap <leader>dC c0
nmap <leader>dh :GRemove

"}}}
"split<cr>:terminal
nmap <leader>tt :split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wi
nmap <leader>tT :vsplit<cr>:terminal<cr><c-w>x:vertical resize +18<cr><c-w>wi
nmap <leader>ts :split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wisass
nmap <leader>tp :split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wiphp
nmap <leader>tc :split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wicomposer
nmap <leader>tn :split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>winpm
nmap <leader>tj :split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wijava
"

"}}}

"navegacion en modo comando {{{

"movimiento:
cmap <M-k> <up>
cmap <M-l> <right>
cmap <M-h> <left>
cmap <M-j> <down>


"}}}

"navegacion en modo visual {{{

"Duplicar seleccion en linea:
xmap <C-d>j ypV
xmap <C-d>k yPV
"movimiento entre lineats
xmap <M-k> xkP
xmap <M-j> xp
"movimiento:
xmap <C-i> y<C-c>i
xmap <C-j> 10j
xmap <C-k> 10k
xmap <leader>t <C-c>:ter<CR><C-w>x:resize +12<CR><C-w>w
xmap <leader>s <C-g>
xmap <leader>nn <Esc>
xmap <leader>. :
"insertar desde modo visual:
xmap o <Esc>o
xmap i <Esc>i
xmap a <Esc>a

"}}}

vmap <leader>vq <C-Q>
vmap <leader>vg v<C-g>
vmap <leader>tt <leader>nn:split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wi
vmap <leader>tT <leader>nn:vsplit<cr>:terminal<cr><c-w>x:vertical resize +18<cr><c-w>wi
vmap <leader>ts <leader>nn:split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wisass
vmap <leader>tp <leader>nn:split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wiphp
vmap <leader>tc <leader>nn:split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wicomposer
vmap <leader>tn <leader>nn:split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>winpm
vmap <leader>tj <leader>nn:split<cr>:terminal<cr><c-w>x:resize +12<cr><c-w>wijava
tmap <leader>.t <cmd>tabnew split<cr>:terminal<cr>i

"modo seleccion {{{

"seleccionar todo el texto:
smap <C-a> <C-c>ggvG<end><C-g>
"seleccionar linea
smap <C-l> <C-c>0v<end><C-g>
"}}}

"modo split<cr>:terminal {{{
tnoremap <leader>nn <c-\><c-n>
tnoremap <leader>vv <c-\><c-n>v
tnoremap <leader>ss <c-\><c-n>v<c-g>
tnoremap <leader>.. <c-\><c-n>:
tnoremap <leader>q <c-\><cmd>q<cr>
"modo eliminar {{{
tmap <leader>dd <leader>nnddi
tmap <leader>dw <leader>nnebdwi
tmap <leader>db <leader>nnedbi
tmap <leader>dB <leader>nnedBi
tmap <leader>dW <leader>nnebdWi
tmap <leader>d{ <leader>nnd{i
tmap <leader>d} <leader>nnd}i
tmap <leader>dD <leader>nnDi
tmap <leader>d<leader> <leader>nnxi
tmap <leader>d. <leader>nnXi
tmap <leader>dc <leader>nnCi
tmap <leader>dC <leader>nncc
tmap <leader>dh <leader>nn:GRemove
"}}}
tmap <leader>.t <cmd>tabnew split<cr>:terminal<cr>i
tmap <leader>tt <cmd>vsplit split<cr>:terminal<cr>
tmap <leader>tT <cmd>split<cr>:terminal<cr>
tmap <leader>ts sass
tmap <leader>tp php
tmap <leader>tc composer
tmap <leader>tn npm
tmap <leader>tj java
"}}}
