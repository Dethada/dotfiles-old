# install shit
pacman -Sy i3-gaps zsh rxvt-unicode tmux gvim ranger i3-block i3lock compton feh xautolock firefox

# powerline fonts
git clone https://github.com/powerline/fonts.git ~/fonts --depth=1
~/fonts/install.sh
rm -rf ~/fonts

# oh my zsh and zsh theme
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# urxvt perl script
wget https://raw.githubusercontent.com/muennich/urxvt-perls/master/keyboard-select -P /usr/lib/urxvt/perl
wget https://raw.githubusercontent.com/simmel/urxvt-resize-font/master/resize-font -P /usr/lib/urxvt/perl

# move config files
cp i3/i3config ~/.config/i3/conf
cp i3/i3block.conf ~/.config/i3/
mv scripts ~/.scripts
cp Xresources ~/.Xresources
cp vimrc ~/.vimrc
cp zshrc ~/.zshrc
cp tmuxconf ~/.tmux.conf

# run xrdb ~/.Xresources manually
# change the wifi interface name in i3blocks.conf
