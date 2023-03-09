"modo normal {{{
nmap <leader>.d :tab DBUI<CR>
nmap <leader>.D :tab DBUI<CR>
"}}}

"modo insert {{{
imap <leader>.d <leader>nn:tab DBUI<CR>
imap <leader>.D <leader>nn:tab DBUI<CR>
"}}}

"modo visual {{{
vmap <leader>.d :tab DBUI<CR>
vmap <leader>.D :tab DBUI<CR>
"}}}

"modo terminal {{{
tmap <leader>.d :tab DBUI<CR>
tmap <leader>.D :tab DBUI<CR>
"}}}
let g:db_ui_env_variable_url = 'mysql://root@localhost/test'
let g:db_ui_env_variable_name = 'Test'
