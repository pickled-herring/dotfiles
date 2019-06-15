" Welcome to the Vim configuration file!
" Not much, but it sets up basic functionality

"
" Editor settings ----------------------
"
" set utf 8
set encoding=utf8
"
" set number, set number
set number relativenumber
"
augroup numbertoggle
		autocmd!
		autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
		autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END
"
" for parenthesis
set showmatch
"
" for tabs
set tabstop=4
" syntax on means that functions are different colors and variables are
" different colors
"
" show invisibles
set list
set listchars=tab:›\ ,eol:¬,trail:∙
"
" Colorscheme setup
set background=dark
set t_Co=256
syntax on
colorscheme gruvbox
"
" Disable auto commenting for all files, if you want to change this just
" change *
"
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"
"disable folding
set nofoldenable
" remapped esc key
inoremap jj <Esc>
" remap to go to <++> in text files
map <C-n> <Esc>/<++><Enter>"_c4l
inoremap {} {}<Esc>ci{
inoremap () ()<Esc>ci(
"
set cursorline
hi CursorLine term=bold cterm=bold
"
" Set up fuzzy search
set path+=~
set path+=**
set wildmenu

" Vundle!	--------------------------
"
set nocompatible              " be iMproved, required
filetype off                  " required
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" lets face it, we're just using defaults, so i'll keep this commented
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" All plugins here! ------------------
"
" General
Plugin 'haya14busa/incsearch.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'flazz/vim-colorschemes'
" Old plugins
"Plugin 'edkolev/tmuxline.vim'
"Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'junegunn/goyo.vim'
"Plugin 'miyakogi/conoline.vim'
"Plugin 'junegunn/limelight.vim'
"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'tpope/vim-fugitive'
"Plugin 'junegunn/vim-easy-align'
"
" Language specific
" markdown
"Plugin 'vim-pandoc/vim-pandoc'
"Plugin 'vim-pandoc/vim-pandoc-syntax'
"Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'JamshedVesuna/vim-markdown-preview'


" All Plugin Settings here	------------------
" Incsearch settings
set hlsearch
map / <Plug>(incsearch-forward)
let g:incsearch#auto_nohlsearch = 1

" airline for the pretty line down there
" this is for airline pusing out of bounds of tmux:
" not a good fix but its a fix
let g:airline#extensions#whitespace#symbol      = '!'
let g:airline_section_z                         = '%l/%L'
" tabline, because i dont like the default tabline
let g:airline#extensions#tabline#enabled        = 1
" tabline, because i done like the default airline tabline
let g:airline#extensions#tabline#left_sep       = ''
let g:airline#extensions#tabline#left_alt_sep   = ''
let g:airline#extensions#tabline#buffer_nr_show = 0
" theme
let g:airline_theme                             = 'zenburn'

" For live LaTeX previews:
let g:livepreview_previewer = 'gv'


" end of vundle
call vundle#end()            " required
filetype plugin indent on    " required

" File specific settings here
