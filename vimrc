" Call pathogen which we use to manage our plugins
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Forget being compatible with good ol' vi
set nocompatible

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting
syntax on

" Enables filetype plugins (NERD Commenter)
filetype plugin on

" Basic options -----------------------------------------------------------
" {{{
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=8
set autoindent
set showmode
set showcmd
set hidden
set lazyredraw
set showmode
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number

colorscheme molokai

"  Change for html files
au BufNewFile,BufRead *.html setlocal filetype=htmldjango
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" System default for mappings is now the "," character
let mapleader = ","

" Searching and movement --------------------------------------------------
" {{{

" Use sane regexes.
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault

" Tabs, spaces, wrapping {{{
set wrap
set textwidth=80
set formatoptions=qrn1
if v:version >= 703
    set colorcolumn=+1
endif

"For New users
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :

" Window commands --------------------------------------------------
" {{{

nnoremap <leader>w <C-w>v<C-w>l

" Move the cursor to the window left of the current one
noremap <silent> ,h :wincmd h<cr>

"Move the cursor to the window below the current one
 noremap <silent> ,j :wincmd j<cr>

"Move the cursor to the window above the current one
 noremap <silent> ,k :wincmd k<cr>

" Move the cursor to the window right of the current one
noremap <silent> ,l :wincmd l<cr>

" Close the window below this one
noremap <silent> ,cj :wincmd j<cr>:close<cr>

" Close the window above this one
noremap <silent> ,ck :wincmd k<cr>:close<cr>

" Close the window to the left of this one
noremap <silent> ,ch :wincmd h<cr>:close<cr>

" Close the window to the right of this one
noremap <silent> ,cl :wincmd l<cr>:close<cr>

" Close the current window
noremap <silent> ,cc :close<cr>

" Move the current window to the right of the main Vim window
noremap <silent> ,ml <C-W>L

" Move the current window to the top of the main Vim window
noremap <silent> ,mk <C-W>K

" Move the current window to the left of the main Vim window
noremap <silent> ,mh <C-W>H

" Move the current window to the bottom of the main Vim window
noremap <silent> ,mj <C-W>J

"Django mappings ----------------------------------------------
nnoremap _dt :set ft=htmldjango<CR>
nnoremap _pd :set ft=python.django<CR>

au BufNewFile,BufRead admin.py     setlocal filetype=python.django
au BufNewFile,BufRead urls.py      setlocal filetype=python.django
au BufNewFile,BufRead models.py    setlocal filetype=python.django
au BufNewFile,BufRead views.py     setlocal filetype=python.django
au BufNewFile,BufRead settings.py  setlocal filetype=python.django
au BufNewFile,BufRead forms.py     setlocal filetype=python.django

