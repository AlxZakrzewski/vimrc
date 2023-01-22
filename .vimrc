let mapleader =" "

" install vim plug https://github.com/junegunn/vim-plug - curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" install fzf - git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
" run :PlugInstall in vim
" plugins
call plug#begin('~/.vim/plugged')

plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
plug 'junegunn/fzf.vim'
plug 'cocopon/iceberg.vim'
plug 'junegunn/goyo.vim'
plug 'sjl/gundo.vim'

call plug#end()

" finding files
set wildmenu

" switches
set number
set relativenumber
nmap <f7> :set number!<cr> :set relativenumber!<cr>

" terminals
set t_co=256

" buffers
set hidden

" splits
set splitbelow

" mappings
imap jk <esc>
nnoremap <leader>s is///g<left><left><left>
nnoremap s :%s//g<left><left>
nnoremap <leader>n :noh<cr>
nnoremap <leader>t :term<cr>
nnoremap <leader><leader> :files<cr>
nnoremap <leader>b :buffers<cr>
nnoremap  :set paste<cr>
nnoremap <leader>o :set nopaste<cr>
vmap y y`]

" colors
syntax on
set background=dark
colorscheme iceberg

" Persistent undo
if has('persistent_undo')
    silent !mkdir ~/.vim/undodir > /dev/null 2>&1
    set undodir=~/.vim/undodir
    set undofile
endif

" indentation
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" navigation
set so=999

" highlights
set hlsearch
set incsearch
set nohlsearch

" remove banner from netrw
let g:netrw_banner = 0

" smart search
set ignorecase
set smartcase

" disable automatic commenting on new line
autocmd filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" automatically deletes all trailing whitespace on save
autocmd bufwritepre * :%s/\s\+$//e

"" filetypes
" yaml
autocmd filetype yaml set cursorcolumn
autocmd filetype yml set cursorcolumn

" turn off autoindent
set noai

" set paste toggle
set pastetoggle=<f2>

" :h unnamedplus
set clipboard=unnamedplus

" disable swap files
set noswapfile
