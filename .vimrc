syntax on
filetype plugin indent on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set visualbell
set mouse=a
set colorcolumn=80

highlight ColorColmn ctermbg=0 guibg=lightgrey

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <SPACE> <Nop>
let mapleader="\<Space>"
nmap <leader>gd <Plug>(coc-definition)

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'eemed/sitruuna.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'hail2u/vim-css3-syntax'
Plug 'turbio/bracey.vim'
Plug 'kabbamine/vcoolor.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

packadd! dracula
syntax enable
colorscheme dracula

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:go_fmt_command = "goimports"    
let g:go_auto_type_info = 1           
" lightline command
let g:lightline = {
            \ 'colorscheme': 'sitruuna',
            \ }

au filetype go inoremap <buffer> . .<C-x><C-o>
" NERDTree plugin specific commands
nnoremap <C-g> :NERDTreeToggle<CR>

" air-line plugin specific commands
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type= 2
let g:airline#extensions#tabline#show_tab_type = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h20
set guifont=DroidSansMono\ Nerd\ Font\ 11
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:Hexokinase_highlighters = ['backgroundfull']

set ttymouse=sgr
set encoding=UTF-8
autocmd FileType c,java inoreabbrev <buffer> /** /**<CR>/<Up>
autocmd FileType javascript set formatprg=prettier\ --stdin
