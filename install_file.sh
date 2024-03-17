#!/bin/bash

apt update
apt upgrade -y
apt install -y curl gcc g++ pavucontrol vim git feh flameshot kitty compton imagemagick lm-sensors polybar fzf zoxide ripgrep powertop xautolock
snap install nvim --classic
sensors-detect --auto
powertop --auto-tune
./set_symlinks.sh
unzip JetBrainsMono.zip -d $HOME/.fonts
