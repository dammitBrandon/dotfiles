call pathogen#infect()
set tabstop=4 " Tab characters = 4 spaces when displayed
set shiftwidth=2 " Use 2 spaces for each insertion of (auto)indent
set softtabstop=2 " Tabs 'count for' 2 spaces when editing (fake tabs)
set expandtab " <tab> -> spaces in insert mode
set autoindent " always set autoindenting on
set smarttab " Smart tabbing!
set shiftround " < and > will hit indent levels instead of +-4 always
set hlsearch
set incsearch
set backspace=2
set number
set wrap
set linebreak
set nolist
set iskeyword-=_
set clipboard=unnamed
noremap <buffer> <silent> k gk
noremap <buffer> <silent> j gj
set nocompatible " stuff for ruby auto indent
syntax on
" syntax enable
filetype indent on " stuff for ruby formattin
filetype plugin on
" set list listchars=tab:»·,trail:·
" autocmd VimEnter * NERDTree
" let NERDTreeDirArrows=0
" autocmd vimenter * if !argc() | NERDTree | endif
set paste
" nmap \nt :NERDTree<CR>
" nmap \nc :NERDTreeClose<CR>
set ruler
" Change background color depending on running environment
if has('gui_running')
    set background=light
else
    set background=dark
endif


" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
"set t_Co=256
"set t_Co=88
if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') &&
  \ filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim"))
  " Use the guicolorscheme plugin to makes 256-color or 88-color
  " terminal use GUI colors rather than cterm colors.
  runtime! plugin/guicolorscheme.vim
  colorscheme molokai 
else
  " For 8-color 16-color terminals or for gvim, just use the
  " regular :colorscheme command.
  colorscheme molokai 
endif
