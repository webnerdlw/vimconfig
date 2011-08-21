set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim

" Set the colour scheme
" let moria_style = 'dark'
" colo moria
colorscheme molokai

" Set font (gvim)
if has('gui_running')
  set guifont=Droid_Sans_Mono:h9:cANSI
endif

" Hide toolbars (gvim)
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar

" Stop breaks in the middle of words
:set linebreak

" Visual Changes
:set number
:set cpoptions+=$

" Set Tabbing
:set smartindent
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set expandtab

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" Tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Autocomplete options
set completeopt=menu,longest,preview
set complete=.,w,b,u,U,t,i,d

" When I close a tab, remove the buffer
set nohidden

" Markdown
augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END

" Backup those backup files somewhere else
set backupdir=~/.vim/tmp/
set directory=~/.vim/tmp

" Turn error bells off
set noerrorbells
set visualbell t_vb=

" Automatically cd into the directory that the file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" This shows what you are typing as a command.  I love this!
set showcmd

" Status line
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Syntax
syntax on
