#!/bin/bash

working_dir=$(pwd)

ln -s working_dir/.lockscreen.png $HOME/.lockscreen.png
ln -s working_dir/.wallpaper.png $HOME/.wallpaper.png
ln -s working_dir/Scripts $HOME/Scripts
ln -s working_dir/nvim $HOME/.config/nvim
ln -s working_dir/i3 $HOME/.config/i3
ln -s working_dir/kitty $HOME/.config/kitty
ln -s working_dir/polybar $HOME/.config/polybar
ln -s working_dir/compton.conf $HOME/.config/compton.conf
