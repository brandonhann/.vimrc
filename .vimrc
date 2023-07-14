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
highlight CursorLine cterm=NONE ctermbg=238 ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorLineNR cterm=NONE ctermbg=239 ctermfg=NONE guibg=NONE guifg=NONE
highlight LineNr cterm=NONE ctermbg=236 ctermfg=141 guibg=NONE guifg=#af87ff
highlight CursorLineNr cterm=NONE ctermbg=239 ctermfg=141 guibg=NONE guifg=#af87ff
