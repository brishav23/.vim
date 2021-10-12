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

