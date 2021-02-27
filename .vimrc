" Tab settings set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
filetype indent on


" Various settings
set smarttab
set autoindent
"show the cursor position at all times
set ruler
set number " enable line numbers
syntax on "Syntax processing
set showmatch " Matching brackets

"searching
set incsearch "search as entered
"set hlsearch "highlight matches

"Escape insert mode quickly
inoremap jj <ESC>
inoremap jJ <ESC>
inoremap Jj <ESC>
inoremap JJ <ESC>

"Insert newlines without leaving normal mode
nnoremap oo o<esc>
nnoremap OO O<esc>j 

set wildmenu " autocomplete menu
"appearance
set t_Co=256
colors zenburn

"Directory for vim-plug plugins
call plug#begin('~/.vim/plugged')

"VimTeX
Plug 'lervag/vimtex'

"Vim Surround
Plug 'https://github.com/tpope/vim-surround'

"Limelight"
Plug 'https://github.com/junegunn/limelight.vim'

Plug 'https://github.com/junegunn/goyo.vim'

call plug#end()

"Set autofold for LaTeX files
let g:vimtex_fold_enabled = 1 
let g:tex_flavor = 'latex'
let g:vimtex_view_methor = 'zathura'
"set fillchars=fold:\ 

"Open VimTex TOC with C-T
nnoremap <C-T> <ESC><ESC>:VimtexTocOpen<CR>

"line breaks are a must (?)
set linebreak
"Activate highlight search
set hlsearch
set ttimeoutlen=100
"set timeloutlen=500

"make folds demarcations pretty
"set fillchars=fold:\

"limelight settings
"" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
" let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
"let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
"let g:limelight_bop = '^\s'
"let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

"Goyo Limelight integration
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
