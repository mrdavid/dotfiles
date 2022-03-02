" Basic settings
set number "Enable line numbers
set mouse=a "Enable mouse clicking to set cursor
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set scrolloff=10
set autoindent
set smarttab

" colors
syntax enable
set background=dark
colorscheme solarized

" vim-plug plugins
call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" Key mappings
"
"""" Craftszdog window split keys
" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w " switch windows
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-

"""" Craftzdog tab management
" Open current directory
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>
