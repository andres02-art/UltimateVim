# UltimateVim
Config vim like a IDE 



# Compatibility

for now, master branch is compatible with development full stack for php with laravel enterprise
if you want colaborate with me for more enterprises, IDEs or development languages follow the following rules

• master branch => php, js, html, sass + laravel environment

can start by cloning the master branch to understand what nvim looks like as an IDE, in thus case for php (composer, laravel, js, html, sass)
if you want configurate it for another enterprise can start since there until you think that is a good Vim Config
after can use it of a personal mode or publish it here ^w^

# Rules

for a friendly development environment all of us can use the latest version of Nvim, but the idea is that any branch from now on "Vim Config" can load on any
vimrc init.vim ideavim gvim.vim etc, for that reason, I would recommend the use of vim scripts than lua scripts even though both are currently compatible with vim.

so, for a good settings we must to follow 3 easy points first:
• "Plugin Rules" here i talk about if you want to keep add remove or modificate how you can do it
• "Leader Configurate" here i talk about how you can modificate the key binds and how use my key binds configuration
• "Tree of config" here i talk about how i organize my folders for make a vim settings and how we must to keep it

# Plugin Rules

- plugins that we must to keep:

• coc.nvim : Conquer of Completion, for autocomplete languages
  Plug 'neoclide/coc.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
  Plug 'sirver/ultisnips' << use it like a complement for coc
 
• editorconfig-vim(autoformat) : .editorconfig settings for develop
  Plug 'chiel92/vim-autoformat'                    "Formater para archivos
  Plug 'editorconfig/editorconfig-vim'

• fzf : fuzzy finder, for quickly found of commands or files and buffers
  Plug 'junegunn/fzf'                              "editor global
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

• neo-tree (nerdtree) : 
  Plug 'nvim-neo-tree/neo-tree.nvim'               "nvim explorer
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'MunifTanjim/nui.nvim'

• easymotion : move like a pro
  Plug 'easymotion/vim-easymotion'                 "navegacion agil de edicion

• dadbod : database motor for connect with your database
  Plug 'tpope/vim-dadbod'                          "Database motor -Complementation Plug 'kristijanhusak/vim-dadbod-completion' scripts for sql
  Plug 'tpope/vim-dotenv'
  Plug 'kristijanhusak/vim-dadbod-ui'               "Database gui
 
• vim-polygot : for the same syntax and folds of all languages 
  Plug 'sheerun/vim-polyglot'
  Plug 'tmhedberg/simpylfold' 
  
• rainbow : for the same syntax of rainbows of all languages
  Plug 'luochen1990/rainbow'                        "tema para los parentesis
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'    "tema de iconos
  Plug 'nathanaelkane/vim-indent-guides'            "tema para los identados
 
- exceptions:

• In another development text engine:
  can descartate rainbow, vim-polyglot, neo-tree and editorconfig-vim only if already text engine have an integrate version of thus, but must set the key binds like
  already was setting or similar

• In another IDE:
  can descartate all of thus except easymotion and dadbod, if you found a plugind for replace them can do it but isn't a good idea also must set the key binds similar 
  already was setting
  
 • In a nvim and gvim:
  if you want replace any you must find equivalent plugins
  
- plugin tool that we must to keep

you can use or not any you want tool for plugins, but when the Vim Setting is published here we must keep Plug tool for that because it is the supported by vim

call plug#start()
call plug#end()

#Leader Configurate

-leader key: ", "

-with the leader key i keep a overlap for all Vim modes, for example if "ve" selects a word in normal mode in insert mode do <leader>ve enter in visual mode and
selects a word, but this also work in normal mode because <leader>ve points to visual mode, however; the most important of this is that in insert mode come back insert 
mode and in normal mode come back normal mode, so for swap of mode you must to press <leader>vv

-if you want add another overlap key bind must to keep in your brain the following overlaps

<leader>ii insert mode
<leader>vv visual mode
<leader>nn normal mode
<leader>.. command mode
<leader>tt terminal mode
<leader>hh Git fugitive mode
<leader>zz folds modes
<leader>ff fuzzy finder mode
<leader>gg bufers mode
<leader>ss easymotions mode
<leader><leader> special mode

#Tree of Config

even if it seems complicated is really very simple, but before start first your vimrc, init.vim, ideavim etc must be out of .vim and must import file vimrc.vim inside it or also can import default.vim for example

.vim\
vimrc.vim
init.vim

in the before case import vimrc.vim inside init.vim or import .vim\ConfigVim\default.vim innside init.vim

.vim\
.vim\ConfigVim\Default.vim

the default.vim Config is the setting for php where im working and where is all logics of this Vim Config, if you can another config can duplicate and rename ConfigVim
by AnythingVim\default.vim inside .vim folder

in default.vim found all global settings that you want and are import 2 files .vim\AnyThingVim\plugins.vim and .vim\AnyThingVim\leaders.vim that is for according 
settings

in plugins.vim for a better organize can import setting scripts like \.vim\AnyThingVim\ConfigPlugins\COCnvim.vim

# postscript
ñ


