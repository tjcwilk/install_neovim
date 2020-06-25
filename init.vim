" Tobys nvim Configuration

" Shortcuts
let mapleader=" "       		" set leader as space
imap jj <Esc>				" Escape insert quicker

" Alias write and quit
nnoremap <leader>q :wq<CR>
nnoremap <leader>w :w<CR>

" Switch vim windows
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Visuals
set ruler               		" Show line & colum number
set cursorline				" Highlights current line
set number              		" Shows line numbers"
set textwidth=100			" text width on page
set autoindent				" auto indent
syntax on				" enable syntax highlighting


" Make sure Plug is installed first
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'              " nice colour theme
Plug 'scrooloose/nerdtree'          " File explorer tree
Plug 'vimwiki/vimwiki'              " A wiki, for vim`
Plug 'tpope/vim-fugitive'           " Nice git integration
Plug 'vim-airline/vim-airline'      " Nice status bar
Plug 'neoclide/coc.nvim', {'branch': 'release'} "intellisense
Plug 'junegunn/goyo.vim'            " Distraction free writer
Plug 'frazrepo/vim-rainbow'         " Color matches brackets
Plug 'jiangmiao/auto-pairs'         " auto closes brackets
Plug 'airblade/vim-gitgutter'       " Show git status on the left.
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'          " Sets fzf root to gitfile

call plug#end()
" Reload .vimrc and :PlugInstall to install plugins

" colours
colorscheme gruvbox
set background=dark
