#VimConfigs

### Colorscheme
Place the contents of [mustang.vim](https://github.com/croaker/mustang-vim) into ~/.vim/colors/mustang.vim

### Plugins
[nerdtree](https://github.com/scrooloose/nerdtree)
[vim-json](https://github.com/elzr/vim-json)
[vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
[vim-javascript](https://github.com/pangloss/vim-javascript)
[typescript-vim](https://github.com/leafgarland/typescript-vim)
[tern_for_vim](https://github.com/ternjs/tern_for_vim)
[emmet-vim](https://github.com/mattn/emmet-vim)
[ctrlp](https://github.com/kien/ctrlp.vim)
[YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

### Installing YouCompleteMe

1) Install cmake ```brew install cmake```
2) Install macvim
	* ```export PATH=/usr/local/bin:$PATH```
	* ```brew update```
	* ```brew install vim && brew install macvim```
	* ```ln -s /usr/local/bin/mvim vim```
3) clone YouCompleteMe to ~/.vim/bundle
4) run ```git submodule update --init --recursive``` in ~/.vim/bundle/YouCompleteMe
5) run ```./install.py --clang-completer``` in ~/.vim/bundle/YouCompleteMe
