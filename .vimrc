" Generally, four-space width tabs
set shiftwidth=4
set tabstop=4

" Tabs for indent level, spaces for formatting within a block
set noexpandtab

" Some basics
set number
syntax on
set nowrap

" EASE INTO IT
set mouse=a

" Colors galore!
set t_Co=256
colorscheme vividchalk

" Copy indentation from previous line
set smartindent

" Improved search
set hlsearch
set smartcase

" Uncomment to Hilight everything in red that is over 80 columns
" match ErrorMsg '\%>80v.\+'

" Mash F5 to kill off whitespace
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Only for assembly, I prefer 8-character tab lengths
autocmd Filetype asm setlocal noexpandtab ts=8 sw=8

" Brace highlighting
syn match Braces display '[{}()\[\]]'
hi Braces ctermfg=43 ctermbg=0

" Some whitespace characters:
"    Trailing spaces are a dot
"    EOL is a pilcrow
"    Tabs are arrows
set list lcs=trail:·,eol:¶,tab:>—,extends:»,precedes:«
