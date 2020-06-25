" Tobys nvim Configuration


"Shortcuts
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
set ruler               	" Show line & colum number
set cursorline				" Highlights current line
set number              	" Shows line numbers"
set textwidth=100			" text width on page
set autoindent				" auto indent
syntax on				    " enable syntax highlighting

set visualbell              " Disable anoying bell on windows    


" Tab configuration
set expandtab				" turns tab key into spaces
set smarttab				" makes tab key go to next indent
set smartindent				" auto indent on newline
set autoindent				" copy indent from previouse
set tabstop=4				" The width of a tab, in spaces
set shiftwidth=4			" The size of an indent, measured in spaces
set softtabstop=4           " confused with all these tab settings now
set expandtab               " 


" Automatically line wrap text files
au BufRead,BufNewFile *.md *.txt setlocal textwidth=80



" Make sure Plug is installed first
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'              " nice colour theme
Plug 'scrooloose/nerdtree'          " File explorer tree
"Plug 'vimwiki/vimwiki'              " A wiki, for vim`
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


" Rainbox pairs
au FileType c,cpp,objc,objcpp,js call rainbow#load()
let g:rainbow_active = 1

" NERDTree
"map <C-n> :NERDTreeToggle<CR>
map <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
nnoremap <Leader>pt :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>pv :NERDTreeFind<CR>

" fzf
nnoremap <C-p> :Files<Cr>           " map ctrl+p to fzf


" RipGrep

nnoremap <leader>g :Rg<CR>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)




