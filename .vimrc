" Configuration file for vim
set modelines=0         " CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible        " Use Vim defaults instead of 100% vi compatibility
set backspace=2         " more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1
syntax on
filetype on
filetype plugin on
filetype indent on
set number
set cursorline
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set list
set listchars=tab:>\ ,trail:-,extends:#,nbsp:+
set mouse=a
set scrolloff=999
nnoremap <S-Up> k
nnoremap <S-Down> j

call plug#begin('~/.vim/plugged')
Plug 'nordtheme/vim'
call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

colorscheme nord
let g:nord_italic = 1
let g:nord_bold = 1
let g:nord_underline = 1
let g:nord_undercurl = 1
let g:nord_transparent = 1

set background=dark
