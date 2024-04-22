#!/bin/bash

# Add repositories
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list

apt update
apt upgrade -y
apt install -y curl gcc g++ pavucontrol vim git feh flameshot kitty compton imagemagick lm-sensors polybar fzf zoxide ripgrep powertop xautolock wezterm
snap install nvim --classic
sensors-detect --auto
powertop --auto-tune
./set_symlinks.sh
