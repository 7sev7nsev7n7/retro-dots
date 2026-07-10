" setting options
colorscheme vimper
set notermguicolors

let g:markdown_fenced_languages = ['c', 'python', 'bash', 'sh']
set breakindent
set breakindentopt+=list:3
set clipboard+=unnamedplus
set cursorcolumn
set cursorline
set cursorlineopt=both
set expandtab
set fillchars=eob:\ 
set ignorecase
set langmap=Ñ\\:
set linebreak
set matchpairs+=<:>
"set noshowmode
set nowrap
set nrformats+=alpha
set number
set relativenumber
set shiftround
set shiftwidth=2
set shortmess+=I
set showcmdloc=statusline
set smartcase
set tabstop=2

" mapping commands
imap <C-Backspace> <C-w>
map <A-Enter> i<Esc>
map <A-Space> i <Esc>l
map <A-w> :set wrap! 
map <A-k> <C-y>
map <A-j> <C-e>
map <C-c> :set cursorcolumn! 

" custom commands
com! FormatJSON %!python -m json.tool
