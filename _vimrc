set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim

" Set the colour scheme
" let moria_style = 'dark' 
" colo moria
colorscheme molokai

" Set font (gvim)
if has('gui_running')
  set guifont=Courier_New:h9:cANSI
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
:set tabstop=2
:set softtabstop=2
:set shiftwidth=2
:set expandtab

" Markdown
augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END

