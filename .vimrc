" Welcome to the Vim configuration file!
" Not much, but it sets up basic functionality


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
Plugin 'tpope/vim-fugitive'
Plugin 'haya14busa/incsearch.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'ctrlpvim/ctrlp.vim'
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
"
" Language specific
" markdown
"Plugin 'vim-pandoc/vim-pandoc'
"Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'xuhdev/vim-latex-live-preview'


"
" Editor settings ----------------------
"
" set utf 8
set encoding=utf8
"
" set number, set number
set number relativenumber
"
" set word warpping
set tw=115
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
"
" highlighting cursorline
set cursorline
hi CursorLine term=bold cterm=bold

" All Plugin Settings here	------------------
" Incsearch settings
set hlsearch
map / <Plug>(incsearch-forward)
let g:incsearch#auto_nohlsearch = 1


" Limelight
"let g:limelight_conceal_ctermfg = 'DarkGray'
"map <leader>l <Plug>(Limelight)
"autocmd VimEnter * Limelight
""let g:limelight_conceal_ctermfg = 240


" Conoline Plugin
"let g:conoline_color_normal_light = 'ctermbg=grey ctermfg=white'
"let g:conoline_color_normal_dark = 'guibg=black guifg=white gui=None'
"let g:conoline_color_insert_dark = 'guibg=black guifg=white gui=bold'
"let g:conoline_use_colorscheme_default_normal=1


" Plugin for text alignment
nmap ga <Plug>(EasyAlign)

" Plugin for markdown
let vim_markdown_preview_toggle=0
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Mozilla Firefox'
let vim_markdown_preview_use_xdg_open=1


" Plugin for CtrlP
" Nerdtree's old shortcut, now ctrlp because i use <c-p> for autocomplete
let g:ctrlp_map        = '<c-n>'
let g:ctrlp_cmd        = 'CtrlPLastMode'
let g:ctrlp_extensions = [ 'line', 'dir']


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


" Plugin for Dev Icons
" Note: htis should be load behind any plugins that shows on the interface
" the thing that makes the entire thing look cool and stuffs 
"
"let g:airline_powerline_fonts = 1


" settings for goyo, the thing that focuses your code so you don't always have
" to look at the corners of the screen
let g:goyo_width = 120
function! s:goyo_enter()
	let b:quitting = 0
    let b:quitting_bang = 0
	autocmd QuitPre <buffer> let b:quitting = 1
    cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction
"
function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
    if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    	if b:quitting_bang
      		qa!
        else
            qa
        endif
    endif
endfunction
"
autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()


" end of vundle
call vundle#end()            " required
filetype plugin indent on    " required

" File specific settings here
