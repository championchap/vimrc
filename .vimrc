set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Put Your Plugins Here
Plugin 'scrooloose/nerdtree'
Plugin 'chriskempson/base16-vim'
Plugin 'elixir-lang/vim-elixir'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Standard .vimrc stuff here
syntax enable
set background=dark
colorscheme base16-tomorrow
set tabstop=4
set number
map <C-\> :NERDTreeToggle<CR>
set colorcolumn=80
set nowrap
hi MatchParen cterm=none ctermbg=white ctermfg=white
set autoindent

" Language specific indentation settings
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype sass setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype xml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" Faster Split Navigation Shortcuts
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" NERDTree Toggle
nnoremap <C-\> :NERDTreeToggle<CR>

" Remove Trailing Whitespace on Save
autocmd BufWritePre * :%s/\s\+$//e

" Always use Unix file endings
set ff=unix

" Set the ; to be the new :, because holding shift sucks
:nmap ; :
