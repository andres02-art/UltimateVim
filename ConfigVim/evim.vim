" Vim script for Evim key bindings
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2019 Jan 27

" Don't use Vi-compatible mode.
set nocompatible

" Use the mswin.vim script for most mappings
source <sfile>:p:h/mswin.vim

" Vim is in Insert mode by default

" Make a buffer hidden when editing another one
set hidden

set backspace=2		" allow backspacing over everything in insert mode
set autoindent		" always set autoindenting on
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set incsearch		" do incremental searching
set mouse=		" always use the mouse

" Don't use Ex mode, use Q for formatting
map Q gq

" Switch syntax highlighting on, when the terminal has colors
" Highlight the last used search pattern on the next search command.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  nohlsearch
endif

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on
" For all text files set 'textwidth' to 120 characters.

set cc=120

" Add optional packages.
" "
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

set sw=2
