# VimConfigs

### Instructions

1) Install [Pathogen](https://github.com/tpope/vim-pathogen) for bundling your plugins.
2) Place ~/.vim and ~/.vimrc in your home directory.
3) Install all the plugins below to ~/.vim/bundle/

### .vimrc changes

* `,ev` will open your .vimrc
* `,sv` will source your .vimrc
* `:` is mapped to `;` so you don't have to hold shift, save keystrokes FTW
* Arrow keys cannot be used in command mode (use HJKL), they do work in insert mode.
* CTRL-n for NERDTREE
* CTRL-p for ctrlp
* Use `let g:ctrlp_custom_ignore` in .vimrc for ignoring files in ctrlp
* Leader key `/` is mapped to `,`

### Colorscheme
1) Place any colorscheme files in ~/.vim/colors/
2) Write the name of the colorscheme in .vimrc
```
if &t_Co >= 256 || has("gui_running")
	colorscheme <COLOR_SCHEME_NAME>
endif
```

### Plugins
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [vim-json](https://github.com/elzr/vim-json)
* [vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
* [vim-javascript](https://github.com/pangloss/vim-javascript)
* [typescript-vim](https://github.com/leafgarland/typescript-vim)
* [tern_for_vim](https://github.com/ternjs/tern_for_vim)
* [emmet-vim](https://github.com/mattn/emmet-vim)
* [ctrlp](https://github.com/kien/ctrlp.vim)
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
* [syntastic](https://github.com/vim-syntastic/syntastic)
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) (Optional, see below for instructions)

### Installing YouCompleteMe

1. Install cmake ```brew install cmake```
2. Install macvim
	* ```export PATH=/usr/local/bin:$PATH```
	* ```brew update```
	* ```brew install vim && brew install macvim```
	* ```ln -s /usr/local/bin/mvim vim```
3. clone YouCompleteMe to ~/.vim/bundle
4. run ```git submodule update --init --recursive``` in ~/.vim/bundle/YouCompleteMe
5. run ```./install.py --clang-completer``` in ~/.vim/bundle/YouCompleteMe
