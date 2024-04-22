#!/bin/bash

working_dir=$(pwd)

rm $HOME/.lockscreen.png
ln -s $working_dir/.lockscreen.png $HOME/.lockscreen.png
rm $HOME/.wallpaper.png
ln -s $working_dir/.wallpaper.png $HOME/.wallpaper.png
rm $HOME/Scripts
ln -s $working_dir/Scripts $HOME/Scripts
rm $HOME/.config/nvim
rm -r $HOME/.config/nvim
ln -s $working_dir/nvim $HOME/.config/nvim
rm $HOME/.config/i3
rm -r $HOME/.config/i3
ln -s $working_dir/i3 $HOME/.config/i3
rm $HOME/.config/polybar
rm -r $HOME/.config/polybar
ln -s $working_dir/polybar $HOME/.config/polybar
rm $HOME/.config/compton.conf
ln -s $working_dir/compton.conf $HOME/.config/compton.conf
rm $HOME/.wezterm.lua
ln -s $working_dir/.wezterm.lua $HOME/.wezterm.lua
