" # BASIC OPTIONS
set nocompatible
"set number
set number
syntax on
" - Indentation options
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set softtabstop=0

" # ADVANCED OPTIONS
"set visualbell
" set terminal colormode, must be set before any colorschemes and highlights
set t_Co=256
set background=dark
" set own colors, some number-color mappings:
" 1 - red, 2 - green, 3 - orange, 4 - cyan, 5 - magenta,
" 6 - lightblue, 7 - lightgray, 8 - gray, 9 - pink, 10 - lightgreen
" 11 - yellow, 12 - blue, 13 - lightpink, 14 - greenblue
" 15 - white, 16 (0) - black, 17 - darkcyan, 18 - cyan
" 22 - grassgreen
highlight Number ctermfg=3
highlight LineNr ctermfg=11
highlight String ctermfg=2
highlight Comment ctermfg=7
highlight Statement cterm=bold ctermfg=4
highlight PreProc cterm=bold ctermfg=10
highlight Function ctermfg=11
highlight Identifier ctermfg=3 cterm=bold
highlight ModeMsg ctermbg=9 ctermfg=3
highlight StatusLineNC ctermbg=8 ctermfg=12 cterm=bold
highlight StatusLine ctermfg=12
highlight Type ctermfg=2
highlight Todo cterm=reverse,bold
highlight Directory cterm=bold ctermfg=4
highlight VertSplit ctermfg=5
highlight Visual ctermbg=8 cterm=None
highlight SearchOn term=reverse ctermfg=0 ctermbg=11
highlight link IncSearch SearchOn
highlight link Search SearchOn
highlight Pmenu ctermbg=0 ctermfg=3
highlight PmenuSel ctermbg=4 ctermfg=3 cterm=none
highlight PmenuSbar ctermbg=8
highlight PmenuThumb ctermbg=3
" - Highlight search
set hls
" - Higlight line under cursos
set cursorline
highlight CursorLine ctermbg=8 cterm=None
" Color column
if exists('+colorcolumn')
    set colorcolumn=80
    highlight ColorColumn ctermbg=8
else
    highlight ColorColumn ctermbg=11
    au BufWinEnter,InsertLeave python match ColorColumn '\%<81v.\%>80v'
endif
" - Better command-line completion
" -- zsh style
set wildmenu
set wildmode=full
" -- bash style
"set wildmode=longest,list
" - Show partial commands in the last line of the screen
set showcmd
" - Display cursor position
set ruler
" - Always display the status line, even if only one window is displayed
set laststatus=2
" No backup and swap
set nobackup
set nowritebackup
set noswapfile
" Backspace
set backspace=indent,eol,start
" - bind \q for nohlsearch
nmap \q :nohlsearch<CR>
" - Easier moving of selected code blocks
vnoremap < <gv
vnoremap > >gv
" - Expand finding files
set path+=**

filetype plugin on
