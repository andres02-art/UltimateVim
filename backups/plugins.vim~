
"Plugins personalizados
source ~/.vim/autoload/plug.vim

call plug#begin('~/.vim/plugged')


"IDE
Plug 'easymotion/vim-easymotion'                 "navegacion agil de edicion

Plug 'nvim-neo-tree/neo-tree.nvim'               "nvim explorer
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'chiel92/vim-autoformat'                    "Formater para archivos
Plug 'editorconfig/editorconfig-vim'

Plug 'tpope/vim-fugitive'                        "Git y Github
Plug 'tpope/vim-rhubarb'                         "required by fugitive to :Gbrowse
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

Plug 'mhinz/vim-signify'
Plug 'kristijanhusak/vim-packager', { 'type': 'opt' }
Plug 'tpope/vim-dadbod'                          "Database motor -Complementation Plug 'kristijanhusak/vim-dadbod-completion' scripts for sql
Plug 'tpope/vim-dotenv'

Plug 'junegunn/fzf'                              "editor global
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-fzf-writer.nvim'
Plug 'mhinz/vim-grepper'                         "grep command
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }


Plug 'scrooloose/nerdcommenter'                  "inteligence comments

" debug y test
Plug 'benmills/vimux'
Plug 'tyewang/vimux-jest-test'                   "Testing motor
Plug 'janko-m/vim-test'
Plug 'editor-bootstrap/vim-bootstrap-updater'    "Testing for bootstrap
Plug 'tomasr/molokai'

" Autocompletado Coc de vim y neo vim
Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'jwalton512/vim-blade'
Plug 'sirver/ultisnips'
Plug 'mattn/emmet-vim'
Plug 'jceb/emmet.snippets'

"typing
Plug 'jiangmiao/auto-pairs'           "emparejar llaves
Plug 'alvan/vim-closetag'             "Auto cerrado
Plug 'tpope/vim-surround'             "Auto encapsulado

"Navigation
Plug 'benmills/vimux'                 "Controlador Window

"Syntax
Plug 'sheerun/vim-polyglot'
Plug 'tmhedberg/simpylfold'

"Status bar
Plug 'vim-airline/vim-airline'

"sistemu de claves
Plug 'autozimu/languageclient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
Plug 'shmargum/vim-sass-colors'       "tema para RGB HEX

"Sitema para multiples cursores
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'terryma/vim-multiple-cursors'

"TEMAS
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'kristijanhusak/vim-dadbod-ui'               "Database gui

Plug 'bling/vim-airline'                          "tema para vim la interface
Plug 'vim-airline/vim-airline-themes'             "diseños para airline
Plug 'luochen1990/rainbow'                        "tema para los parentesis
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'    "tema de iconos
Plug 'nathanaelkane/vim-indent-guides'            "tema para los identados

call plug#end()


"test motors
let vim_bootstrap_langs = "php,vue,html,javascript"
let vim_bootstrap_editor = "vim"

"Multiple cursors line
source ~\.vim\ConfigVim\ConfigPlugins\MultiCursorLine.vim

"Configuracion Fuzzy y telescope
source ~\.vim\ConfigVim\ConfigPlugins\FZFtelescope.vim

"Configuracion the indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme onedark :hi IndentGuidesOdd  guibg=235   ctermbg=235
autocmd VimEnter,Colorscheme onedark :hi IndentGuidesEven guibg=235   ctermbg=236

"Configuracion Rainbow
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

"Configuracion GitGithub
source ~\.vim\ConfigVim\ConfigPlugins\Gitnvim.vim

"Configuracion editorconfig - Autoindent
au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"
let g:prettier#autoformat = 1
let g:autoformat_autoindent = 1
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 1
let g:formatterpath = ['~/.vim/formatters']
autocmd BufWrite * :Autoformat

"Configuracion Favicon
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_startify = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 0
let g:webdevicons_enable_vimfiler = 1
let g:airline_powerline_fonts = 1
set guifont=FiraCode\ NF:h11

"Configuracion Neotree
source ~\.vim\ConfigVim\ConfigPlugins\Neotree.vim

"Configuracion Intelegence Comments
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1


"Configuracion easymotion
source ~\.vim\ConfigVim\ConfigPlugins\EasyMotion.vim

"Configuracion syntax and flods
au BufRead,BufNewFile *.scss set filetype=scss.css
autocmd FileType scss set iskeyword+=-
set foldmethod=indent
au VimEnter * syntax on

"Configuracion BaseDeDatos
source ~\.vim\ConfigVim\ConfigPlugins\DBO.vim

"Configuracion Coc-vim
source ~\.vim\ConfigVim\ConfigPlugins\COCnvim.vim

let g:UltiSnipsExpandTrigger="<leader><leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><leader>n"
let g:UltiSnipsJumpBackwardTrigger="<leader><leader>p"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType * EmmetInstall

"Configuracion auto-pairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

"Configuracion ayucolor
let ayucolor="mirage"

"configuracion Onedark
set background=dark
let g:gruvox_cotrast_dark="hard"
let g:lightline = {
                  \ 'colorscheme': 'onedark',
                  \ }
colorscheme onedark

"configuracion airline
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
