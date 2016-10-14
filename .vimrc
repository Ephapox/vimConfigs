set nocompatible
call pathogen#helptags()
call pathogen#infect()

" leader key from \ => ,
let mapleader=","

" Plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim

if &t_Co >= 256 || has("gui_running")
	colorscheme blackboard
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
noremap <C-N> :NERDTreeToggle<CR>

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
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
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

" autocmd filtype <file_type> set <command>
" filetype specific commands
if has("autocmd")
  "" *.md should be markdown
  autocmd BufRead,BufNewFile *.md set filetype=mkd

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=80
  autocmd FileType html,xhtml,htmldjango,javascript,emblem setlocal sw=2 ts=2 tw=100
  autocmd FileType html,xhtml,htmldjango,javascript,emblem setlocal isk=@,48-57,_,192-255,-,$
  autocmd FileType less,coffee,jade,json setlocal sw=2 ts=2 tw=80
  autocmd BufRead,BufNewFile *.bayou setfiletype bayou
  autocmd BufRead,BufNewFile *.scala setfiletype scala
  autocmd FileType html,xhtml,htmldjango,javascript,emblem,coffee noremap <D-d> Odebugger<Esc>:w<Return>
  autocmd FileType python noremap <D-d> Oimport ipdb; ipdb.set_trace()<Esc>:w<Return>
  "autocmd FileType c,cpp,php,perl setlocal foldmethod=indent foldminlines=5 foldnestmax=5
  autocmd FileType go set noexpandtab

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif " has("autocmd")

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.sass-cache$|\.hg$\|\.svn$\|\.yardoc\|public$|log\|tmp$|node_modules$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
