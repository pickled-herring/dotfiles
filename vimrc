" Welcome to the Vim configuration file!
" Not much, but it sets up basic functionality


" Editor settings ----------------------
set encoding=utf8
set number relativenumber
set showmatch

" for tabs
set shiftwidth=8
set tabstop=8
set cindent

" show invisibles
set list
set listchars=tab:›\ ,eol:¬,trail:∙

" remapped esc key
inoremap jj <Esc>

" allow running commands written out in the buffer itself
map <C-x> :y x|@x

" Colorscheme setup
set background=dark
set t_Co=256
syntax on
colo slate

" cursorline support
set cursorline
hi CursorLine term=bold cterm=bold
hi Search cterm=bold

" Set up fuzzy search
set path+=~
set path+=**
set wildmenu
