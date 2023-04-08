" Set up tabs for indentation to cooperate with vim-stabs.
set noet sts=0 sw=4 ts=4
set cindent
set cinoptions=(0,u0,U0

set nomodeline

" Some basics
set number
syntax on
set nowrap
set mouse=a

" Colors galore!
set t_Co=256
colorscheme vividchalk

" Improved search
set hlsearch
set smartcase

autocmd Filetype asm setlocal noexpandtab ts=8 sw=8
autocmd BufRead,BufNewFile *.a68 setlocal noexpandtab ts=8 sw=8 syntax=asm68k
autocmd BufRead,BufNewFile *.inc setlocal noexpandtab ts=8 sw=8 syntax=asm68k
autocmd BufRead,BufNewFile *.s   setlocal noexpandtab ts=8 sw=8 syntax=asm68k

" Brace highlighting
syn match Braces display '[{}()\[\]]'
hi Braces ctermfg=43 ctermbg=0

" Some whitespace characters:
"    Trailing spaces are a dot
"    Tabs are arrows
set list lcs=trail:·,tab:>—,extends:»,precedes:«

set laststatus=2


" Plugin-related shortcuts
map <F4> :NERDTreeToggle <CR>
map <F12> :YcmCompleter GoTo<CR>

" YCM's diagnostics don't work for any of my projects so
let g:ycm_show_diagnostics_ui = 0
