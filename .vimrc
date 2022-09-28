let mapleader =" "

" Plugins
call plug#begin('~/.vim/plugged')

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
nnoremap S :%s//g<Left><Left>
nnoremap <leader>n :noh<CR>
nnoremap <leader>t :term<CR>

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

" Smart search
set ignorecase
set smartcase

" Disable automatic commenting on new line
set formatoptions-=cro

" Automatically deletes all trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"" Filetypes
" Yaml
autocmd Filetype yaml set cursorcolumn
autocmd Filetype yml set cursorcolumn
