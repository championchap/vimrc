set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Put Your Plugins Here
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'elixir-lang/vim-elixir'
Plugin 'beyondwords/vim-twig'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'airblade/vim-gitgutter'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'digitaltoad/vim-pug'
Plugin 'jdonaldson/vaxe'
Plugin 'jwalton512/vim-blade'
Plugin 'leafgarland/typescript-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'w0rp/ale'
Plugin 'lambdatoast/elm.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'rhysd/vim-crystal'
Plugin 'stanangeloff/php.vim'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Standard .vimrc stuff here
syntax enable
set background=dark
set expandtab
set number
set colorcolumn=80
set nowrap
set autoindent
set shiftwidth=4
set softtabstop=4
set ignorecase
hi MatchParen cterm=none ctermbg=white ctermfg=white

" Language specific indentation settings
autocmd Filetype ruby setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype html setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype css setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype sass setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype xml setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype yaml setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype pug setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype eruby setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype haxe setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype html.handlebars setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype json setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype apache setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype rust setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype crystal setlocal expandtab shiftwidth=2 softtabstop=2
autocmd Filetype blade setlocal expandtab shiftwidth=2 softtabstop=2

" Faster Split Navigation Shortcuts
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

nnoremap <C-=> <C-W>=

" NERDTree Toggle
nnoremap <C-\> :NERDTreeToggle<CR><C-w>=

" NERDTree Show Hidden files by Default
let NERDTreeShowHidden=1

" Show/Hide the Tagbar
nmap <F8> :TagbarToggle<CR>

" Remove Trailing Whitespace on Save
autocmd BufWritePre * :%s/\s\+$//e

" Always use Unix file endings
set ff=unix

" Set the ; to be the new :, because holding shift sucks
:nmap ; :

" This makes sure we can use backspace to delete characters we haven't typed
set backspace=2

" Powerline Stuff
let g:airline_powerline_fonts = 1
let g:airline_#extensions#branch#enables = 1

" Ale stuff
" autocmd bufwritepost *.js silent !standard --fix %
" set autoread
