set modelines=0
set nocompatible
set backspace=2
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
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
inoremap <S-Up> <Esc>k^i
inoremap <S-Down> <Esc>j^i
set shiftwidth=0

call plug#begin('~/.vim/plugged')
    Plug 'nordtheme/vim'
    Plug 'preservim/nerdtree'
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
map <F3> :NERDTreeToggle<CR>
set background=dark
