#!/bin/bash

# oh my zsh and zsh theme
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
git clone https://github.com/denysdovhan/spaceship-prompt.git "${ZSH_CUSTOM}/themes/spaceship-prompt"
ln -s "${ZSH_CUSTOM}/themes/spaceship-prompt/spaceship.zsh-theme" "${ZSH_CUSTOM}/themes/spaceship.zsh-theme"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
git clone https://github.com/zdharma/fast-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/fast-syntax-highlighting


# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# useful rust tools
cargo install exa bat hx ripgrep fd-find tokei

# get config files
wget https://raw.githubusercontent.com/PotatoDrug/dotfiles/master/.tmux.conf -P ~
wget https://raw.githubusercontent.com/PotatoDrug/dotfiles/master/.zshrc -P ~

## neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# mkdir -p ~/.config/nvim
# wget https://raw.githubusercontent.com/PotatoDrug/dotfiles/master/init.vim -P ~/.config/nvim
# nvim +PlugInstall +qall > /dev/null
### SpaceVIM
curl -sLf https://spacevim.org/install.sh | bash

# cp i3/i3config ~/.config/i3/conf
# cp i3/i3block.conf ~/.config/i3/
# mv scripts ~/.scripts
# cp Xresources ~/.Xresources

# run xrdb ~/.Xresources manually
# change the wifi interface name in i3blocks.conf
