# VIM Setup

This contains my vimrc and UltiSnips snippets

## Setting up

In order to use it, use [vundle](https://github.com/VundleVim/Vundle.vim) and install UltiSnips by opening vim and (assuming the vimrc has what it needs) running ```:PluginInstall```

## Additional Notes

Since there is a mapping to copy the contents of the file to the clipboard on macos using ```pbcopy```, this will only work on linux with an alias

```
alias 'pbcopy'='xclip -sel c'
alias 'pbpaste'='xclip -sel c -o'
```

in the ```.zshrc```


# Compatibility with Neovim

Neovim has its own config file: `~/.config/nvim/init.vim`.
To use an existing vim config with neovim, add the following lines
to your `~/.config/nvim/init.vim` file (this lets you use your vim configuration with neovim):

```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vim/vimrc
```

Any _neovim-specific_ config should go in the `~/.config/nvim/init.vim` file
(including the stuff below).

To get python support and, by extension, UltiSnips to work, you should make a virtualenv
dedicated to neovim and install the neovim plugin using `pip install neovim` in the virtualenv.
Then specify the path using:

```
let g:python3_host_prog = '/full/path/to/python/binary'
```

## Additional notes for neovim

To disable mouse support:

```
set mouse=
```

To keep the block cursor at all times:

```
set guicursor=
```
