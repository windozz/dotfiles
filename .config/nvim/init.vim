" no compatibility with vi
set nocompatible

" Vundle plugins
"filetype off
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'

" rich presence for discord
"Plugin 'aurieh/discord.nvim'

" all plugins must be before this line
"call vundle#end()
"filetype plugin indent on

" prevent nvim for changing the cursor shape
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
set guicursor=

" 4 space tabs, tab key inserts 4 spaces
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" line numbers
set number
set cursorline

syntax on           " syntax highlighting

" disable bells
set t_vb=
set visualbell

" no line wrapping
set nowrap
set textwidth=0
set wrapmargin=0

" status bar colors
hi StatusLine ctermfg=7 ctermbg=8 cterm=none term=none
hi User1 ctermfg=7 ctermbg=0 cterm=none term=none
hi User2 ctermfg=7 ctermbg=none cterm=none term=none
hi User3 ctermfg=7 ctermbg=0 cterm=none term=none
hi User4 ctermfg=7 ctermbg=8 cterm=none term=none

" line numbers
hi LineNr ctermfg=8 ctermbg=none
hi CursorLineNr ctermfg=5 cterm=none term=none
hi CursorLine cterm=none term=none

" syntax highlighting
hi Comment ctermfg=8 cterm=none term=none
hi Type ctermfg=2 cterm=none term=none
hi String ctermfg=12 cterm=none term=none
hi Keyword ctermfg=5 cterm=none term=none
hi Function ctermfg=2 cterm=none term=none
hi Identifier ctermfg=7 cterm=none term=none
hi Constant ctermfg=13 cterm=none term=none
hi Statement ctermfg=5 cterm=none term=none
hi Number ctermfg=4 cterm=none term=none
hi Boolean ctermfg=2 cterm=none term=none
hi Special ctermfg=4 cterm=none term=none
hi PreProc ctermfg=8 cterm=none term=none
hi Operator ctermfg=5 cterm=none term=none

" status bar
set statusline=\                    "
set statusline+=%t                  "
set statusline+=\ %1*\              "
set statusline+=%y                  "
set statusline+=\ %2*\              "
set statusline+=%=                  "
set statusline+=\ %3*\              "
set statusline+=line                "
set statusline+=\                   "
set statusline+=%l                  "
set statusline+=\ %4*\              "
set statusline+=of                  "
set statusline+=\                   "
set statusline+=%L                  "
set statusline+=\                   "

