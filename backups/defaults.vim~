" The default vimrc file.
"
" Maintainer: Bram Moolenaar <Bram@vim.org>
" Last change: 2020 Sep 30
"
" This is loaded if no vimrc file was found.
" Except when Vim is run with "-u NONE" or "-C".
" Individual settings can be reverted with ":set option&".
" Other commands can be reverted as mentioned below.

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" Avoid side effects when it was already reset.
if &compatible
  set nocompatible
endif

" When the +eval feature is missing, the set command above will be skipped.
" Use a trick to reset compatible only when the +eval feature is missing.
silent! while 0
set nocompatible
silent! endwhile

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

set history=200  " keep 200 lines of command line history
set ruler  " show the cursor position all the time
set showcmd  " display incomplete commands
set wildmenu  " display completion matches in a status line

set ttimeout  " time out for key codes
set ttimeoutlen=100 " wait up to 100ms after Esc for special key

" Show @@@ in the last line if it is truncated.
set display=truncate

" Show a few lines of context around the cursor.  Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5

" Do incremental searching when it's possible to timeout.
if has('reltime')
  set incsearch
endif

" Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
" confusing.
set nrformats-=octal

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries.
if has('win32')
  set guioptions-=t
endif

" Don't use Ex mode, use Q for formatting.
" Revert with ":unmap Q".
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
" Revert with ":iunmap <C-U>".
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine.  By enabling it you
" can position the cursor, Visually select and scroll with the mouse.
" Only xterm can grab the mouse events when using the shift key, for other
" terminals use ":", select text and press Esc.

" Only do this part when Vim was compiled with the +eval feature.
if 1

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  " Revert with ":filetype off".
  filetype plugin indent on

  " Put these in an autocmd group, so that you can revert them with:
  " ":augroup vimStartup | au! | augroup END"
  augroup vimStartup
    au!

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid, when inside an event handler
    " (happens when dropping a file on gvim) and for a commit message (it's
    " likely a different one than last time).
    autocmd BufReadPost *
          \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
          \ |   exe "normal! g`\""
          \ | endif

  augroup END

endif

" Switch syntax highlighting on when the terminal has colors or when using the
" GUI (which always has colors).

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
" Revert with: ":delcommand DiffOrig".
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If set (default), this may break plugins (but it's backward
  " compatible).
  set nolangremap
endif


" Setting some decent VIM settings for programming
" This source file comes from git-for-windows build-extra repository (git-extra/vimrc)

ru! defaults.vim                " Use Enhanced Vim defaults
set mouse=a                    " Reset the mouse setting from defaults
aug vimStartup | au! | aug END  " Revert last positioned jump, as it is defined below
  let g:skip_defaults_vim = 1     " Do not source defaults.vim again (after loading this system vimrc)




  set ai                          " set auto-indenting on for programming
  set showmatch                   " automatically show matching brackets. works like it does in bbedit.
  set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
  set laststatus=2                " make the last line where the status is two lines deep so you can see status always
  set showmode                    " show the current mode
  set clipboard=unnamed           " set clipboard to unnamed to access the system clipboard under windows
  set wildmode=list:longest,longest:full   " Better command line completion

  " Show EOL type and last modified timestamp, right after the filename
  " Set the statusline
  set statusline=%f               " filename relative to current $PWD
  set statusline+=%h              " help file flag
  set statusline+=%m              " modified flag
  set statusline+=%r              " readonly flag
  set statusline+=\ [%{&ff}]      " Fileformat [unix]/[dos] etc...
  set statusline+=\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})  " last modified timestamp
  set statusline+=%=              " Rest: right align
  set statusline+=%l,%c%V         " Position in buffer: linenumber, column, virtual column
  set statusline+=\ %P            " Position in buffer: Percentage

  if &term =~ 'xterm-256color'    " mintty identifies itself as xterm-compatible
    if &t_Co == 8
      set t_Co = 256              " Use at least 256 colors
    endif
    " set termguicolors           " Uncomment to allow truecolors on mintty
  endif
  "------------------------------------------------------------------------------
  " Only do this part when compiled with support for autocommands.
  if has("autocmd")
    " Set UTF-8 as the default encoding for commit messages
    autocmd BufReadPre COMMIT_EDITMSG,MERGE_MSG,git-rebase-todo setlocal fileencodings=utf-8

    " Remember the positions in files with some git-specific exceptions"
    autocmd BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$")
          \           && &filetype !~# 'commit\|gitrebase'
          \           && expand("%") !~ "ADD_EDIT.patch"
          \           && expand("%") !~ "addp-hunk-edit.diff" |
          \   exe "normal g`\"" |
          \ endif

    autocmd BufNewFile,BufRead *.patch set filetype=diff

    autocmd Filetype diff
          \ highlight WhiteSpaceEOL ctermbg=red |
          \ match WhiteSpaceEOL /\(^+.*\)\@<=\s\+$/
  endif " has("autocmd")
  "Color

  "colorscheme Onedark

  "Configuracion personalizada añadida.
  set number                   "preferecias personalizadas
  set rnu                      "https://geekland.eu/instalar-y-configurar-vim/
  set smartindent
  set incsearch                 "incrementa la busqueda
  set expandtab                 "Convierte las tabulaciones en espacios
  set tabstop=1
  set encoding=UTF-8

  "Configuracion de clipboard
  set backupdir=~/.vim/backups/
  set directory=~/.vim/swaps/
  set undodir=~/.vim/undos/

  set path+=**
  let g:loaded_ruby_provider = 0

  "leader añadidos
  source ~/.vim/ConfigVim/leaders.vim

  "plugins añadidos
  source ~/.vim/ConfigVim/plugins.vim

