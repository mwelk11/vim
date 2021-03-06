""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
"NERD Tree for File Navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Ctrl P for finding files quickly
Plug 'kien/ctrlp.vim'
" color scheme
Plug 'mhinz/vim-janah'
" relative line numbers
Plug 'myusuf3/numbers.vim'
" nice vim status bar
Plug 'bling/vim-airline'
" show the indentation
Plug 'yggdroot/indentline'
" Show the tab number for the files
Plug 'mkitt/tabline.vim'
" Auto complete HTML tags
Plug 'alvan/vim-closetag'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make ctrl-p open a new tab by default
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
let g:ctrlp_custom_ignore = 'node_modules'

" indent color changes
let g:indentLine_color_term = 239

" NERDTree Ignore
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" REMAPPING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make space my leader key
let mapleader = "\<Space>"
" Open up files
nnoremap <Leader>o :CtrlP<CR>
" Save files
nnoremap <Leader>w :w<CR>
" Quit Files
nnoremap <Leader>q :q<CR>
" copy to clipboard
vmap <Leader>y "+y
" refresh source
nmap <Leader>s :source $MYVIMRC<CR>
" turn off search highlight
nnoremap <leader>/ :nohlsearch<CR>
" toggle NERDTREEFind
nnoremap <leader>f :NERDTreeFind<CR>
" toggle NERDTREE
nnoremap <leader>n :NERDTreeToggle<CR>
" jump to matching bracket/curly brace
nnoremap <leader>v v%
" redo an undo
nnoremap <leader>r <C-r>
" map the ESC key to jj to prevent having to hit it constantly
inoremap jj <Esc>
" remap page up
nnoremap K <C-B>
" remap page down
nnoremap J <C-F>
"move to the beginning of the line
nnoremap B ^
nnoremap ^ <nop>
"move to the end of the line
nnoremap E $
nnoremap $ <nop>
" trim trailing white space off the ends of lines
nnoremap <leader>t :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" Paste on a new line"
nnoremap <leader>p o<ESC>p
" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
" turn off the tab tines
nnoremap <leader><tab> :IndentLinesToggle<cr>
" open up VIMRC in new window
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" knock current location on line, down to next line
nnoremap <leader><Enter> i<CR><esc>
" find and replace based on current word
nnoremap <Leader>c :%s/\<<C-r><C-w>\>//g<Left><Left>
" change all tabs to 4 spaces
nnoremap <leader>g :%s/\t/    /g<cr>
" surround any word with quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" surround any word with single quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>h <C-W><C-H>
nnoremap <leader>l <C-W><C-L>
" toggle relative/actual line numbers
nnoremap <F12> :NumbersToggle<CR> 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VISUALS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" show command in bottom bar
set showcmd

" Make vim redrawing much faster
set lazyredraw
set ttyfast

"powerline fonts
let g:airline_powerline_fonts = 1

" color scheme
autocmd ColorScheme janah highlight Normal ctermbg=235
colorscheme janah

" make a nice status bar appear all of the time
set laststatus=2

" current line highlighting
set cursorline

" highlight matching [{
set showmatch

" Set relative line numbers
set number

" split naturally
set splitbelow
set splitright
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FORMATTING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Soft tabs
set expandtab
set number
set shiftwidth=4
set softtabstop=0
set softtabstop=4
set tabstop=4

"syntax processing
syntax on

" Use english for spellchecking
set spl=en spell
set nospell

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ABBREVIATIONS 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev retreive retrieve
iabbrev teh the
iabbrev chromsome chromosome
iabbrev Chromsome Chromosome

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCH
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore case on search unless search has uppercase characters
set ignorecase
set smartcase

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RANDOM
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" move the swap files and such to directories inside of vim
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" if the file is changed elsewhere, read it again
set autoread

" retain the history for longer
set history=1000
