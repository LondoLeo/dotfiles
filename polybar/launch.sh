#!/bin/bash

killall -q polybar
polybar --config=$HOME/.config/polybar/infobar.ini menubar
