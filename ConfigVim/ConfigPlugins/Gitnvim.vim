"modo command {{{
nmap <leader>hh :Git
nmap <leader>hk :Git instaweb
nmap <leader>hp :Git push origin
nmap <leader>hl :Git pull origin
nmap <leader>hL :Git log<cr>
nmap <leader>hs :Git status<CR>
nmap <leader>ha :Git add
nmap <leader>hS :Git stash
nmap <leader>hg :Git stage
nmap <leader>hr :Git remote add -m origin
nmap <leader>hR :Git rebase
nmap <leader>hc :Git commit<CR>
nmap <leader>hC :Git clone
nmap <leader>hw :Git checkout
nmap <leader>hf :Git fetch --add origin
nmap <leader>hf :GitFiles<CR>
nmap <leader>hb :Git branch
nmap <leader>hd :Git diff
nmap <leader>hD :Git difftool
nmap <leader>hi :Git init<CR>
nmap <leader>hm :Git merge
nmap <leader>hM :Git mergetool
nmap <leader>hB :Git show-branch<CR>

nmap <leader>H :Gist
nmap <leader>Hp :Gist -p
nmap <leader>HP :Gist -P
nmap <leader>He :Gist -e
nmap <leader>HE :Gist --edit
"}}}

"modo insert {{{
imap <leader>hh <leader>nn:Git
imap <leader>hk <leader>nn:Git instaweb
imap <leader>hp <leader>nn:Git push origin
imap <leader>hl <leader>nn:Git pull origin
nmap <leader>hL <leader>nn:Git log<cr>
imap <leader>hs <leader>nn:Git status<CR>
imap <leader>ha <leader>nn:Git add
imap <leader>hS <leader>nn:Git stash
imap <leader>hg <leader>nn:Git stage
imap <leader>hr <leader>nn:Git remote add -m origin
nmap <leader>hR <leader>nn:Git rebase
imap <leader>hc <leader>nn:Git commit<CR>a
imap <leader>hC <leader>nn:Git clone
nmap <leader>hw <leader>nn:Git checkout
imap <leader>hf <leader>nn:Git fetch --add origin
imap <leader>hf <leader>nn:GitFiles<CR>
imap <leader>hb <leader>nn:Git branch
imap <leader>hd <leader>nn:Git diff
imap <leader>hD <leader>nn:Git difftool
imap <leader>hi <leader>nn:Git init<CR>a
imap <leader>hm <leader>nn:Git merge
imap <leader>hM <leader>nn:Git mergetool
imap <leader>hB <leader>nn:Git show-branch<CR>

imap <leader>H <leader>nn:Gist
imap <leader>Hp <leader>nn:Gist -p
imap <leader>HP <leader>nn:Gist -P
imap <leader>He <leader>nn:Gist -e
imap <leader>HE <leader>nn:Gist --edit
"}}}
