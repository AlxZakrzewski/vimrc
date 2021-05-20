set nocompatible

if has('filetype')
  filetype indent plugin on
endif

if has('syntax')
  syntax on
endif

set hidden

set wildmenu

set showcmd

set hlsearch

set number

set nowrap

color desert

 "Quickly insert an empty new line without entering insert mode
nnoremap o o<Esc>0"_D
nnoremap O O<Esc>0"_D
