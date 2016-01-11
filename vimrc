set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Easily open files with Ctrl-P
Plugin 'kien/ctrlp.vim'
"Highlights whitespaces
Plugin 'ntpeters/vim-better-whitespace'
"Tab autocomplete
Plugin 'ervandew/supertab'
"Finds corresonding files in a directory structure
"Auto completes pairs of brackets etc
Plugin 'jiangmiao/auto-pairs.git'
Plugin 'akhaku/vim-java-unused-imports'
"Line indentation dashes for spaces in files
Plugin 'Yggdroot/indentLine'
Plugin 'mileszs/ack.vim'
"Track the engine.
Plugin 'SirVer/ultisnips'
 "Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
"Plugins for nerd-tree and file navigation / modifactions to git
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Easily comment out lines in vim
Plugin 'scrooloose/nerdcommenter'
" All of your Plugins must be added before the following line
call vundle#end()            " required
execute pathogen#infect()
filetype plugin indent on    " required
highlight ExtraWhitespace ctermbg=blue

syntax on
set tabstop=4
set autoindent
set smarttab

set laststatus=2
set number
set expandtab
set shiftwidth=4
set softtabstop=4

filetype on
map , \
let mapleader = ","

map <C-n> :NERDTreeToggle<CR>
map <leader>r :!rspec <CR>

noremap <Up> ""
noremap! <Up> <Esc>
noremap <Down> ""
noremap! <Down> <Esc>
noremap <Left> ""
noremap! <Left> <Esc>
noremap <Right> ""
noremap! <Right> <Esc>

:set noswapfile
:set background=dark
:colorscheme base16-codeschool

hi MatchParen guibg = NONE guifg=blue gui=bold
"
" " Trigger configuration. Do not use <tab> if you use
"https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"
 let g:NERDTreeIndicatorMapCustom = {
     \ "Modified"  : "✹",
     \ "Staged"    : "✚",
     \ "Untracked" : "✭",
     \ "Renamed"   : "➜",
     \ "Unmerged"  : "═",
     \ "Deleted"   : "✖",
     \ "Dirty"     : "✗",
     \ "Clean"     : "✔︎",
     \ "Unknown"   : "?"
     \ }
