set nocompatible
call pathogen#helptags()
call pathogen#infect()

" leader key from \ => ,
let mapleader=","

" Plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim

if &t_Co >= 256 || has("gui_running")
	colorscheme mustang
endif

if &t_Co > 2 || has("gui_running")
	syntax on
endif

" Mappings

" maps ,ev to open .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
" maps ,sv to source .vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" maps ; to :
nnoremap ; :
" clears search buffer when ,/
nmap <silent> ,/ :nohlsearch<CR>

" prevents arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" movement keys allow wrapped line navigation
nnoremap j gj
nnoremap k gk

" Options
" Indenting Options
set tabstop=4 " # of spaces for a tab
set smarttab " insert tabs on start of a line according to shiftwidth
set shiftwidth=4 " # of spaces for audoindent
set shiftround " Use a multiple of shiftwidth when indenting with <, >
set autoindent 
set copyindent " copy the previous line's indent
" Buffer Options
set hidden " hides buffers when they are unsaved and a new buffer is opened
" Syntax Options
set showmatch " show matching paranthesis
" Search Options
set history=1000 " larger search history
set ignorecase " ignore case when searching
set hlsearch " highlight search terms
set incsearch " show search matches as you type
set smartcase " ignore case if pattern is all lowercase only

set backspace=indent,eol,start " backspace everything in insert
set number
set undolevels=1000 " larger undo history
set wildignore=*.swp " ignore swp files
set clipboard=unnamed " yank will copy to system clipboard
set pastetoggle=<F5> " F5 in insert allows for pasting w/o indent
set mouse=a

filetype plugin indent on

if has('autocmd')
	" autocmd filtype <file_type> set <command>
	" filetype specific commands
endif

