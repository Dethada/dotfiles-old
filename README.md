# Dotfiles

## Install

1. Run `sudo sh -c "$(wget https://raw.githubusercontent.com/PotatoDrug/dotfiles/master/root-install.sh -O -)"`
2. Run `sh -c "$(wget https://raw.githubusercontent.com/PotatoDrug/dotfiles/master/user-install.sh -O -)"`
3. Open tmux and press prefix + I (capital i, as in Install) to fetch the plugin.

## VIM
```
" undo highlighting from search
nnoremap <silent> <F6> :let @/=""<CR>
```

## Useful links

- [Tmux cheatsheet](https://gist.github.com/MohamedAlaa/2961058)
- [urxvt](https://github.com/bookercodes/awesome-urxvt)