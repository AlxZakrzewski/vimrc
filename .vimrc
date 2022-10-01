let mapleader =" "

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'cocopon/iceberg.vim'
Plug 'junegunn/goyo.vim'

call plug#end()

" Finding files
set wildmenu

" Switches
set number
set relativenumber
nmap <F7> :set number!<CR> :set relativenumber!<CR>

" Terminals
set t_Co=256

" Buffers
set hidden

" Mappings
imap jk <Esc>
nnoremap <leader>s is///g<Left><Left><Left>
nnoremap S :%s//g<Left><Left>
nnoremap <leader>n :noh<CR>
nnoremap <leader>t :term<CR>
nnoremap <leader><leader> :Files<Cr>
nnoremap <leader>b :Buffers<Cr>
vmap y y`]

" Colors
syntax on
set background=dark
colorscheme iceberg

" Persistent undo
set undofile
set undodir='~/.vim/undodir'

" Indentation
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Navigation
set so=999

" Highlights
set hlsearch
set incsearch

" Remove banner from netrw
let g:netrw_banner = 0

" Smart search
set ignorecase
set smartcase

" Disable automatic commenting on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Automatically deletes all trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"" Filetypes
" Yaml
autocmd Filetype yaml set cursorcolumn
autocmd Filetype yml set cursorcolumn
