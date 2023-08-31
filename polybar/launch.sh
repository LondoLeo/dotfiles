#!/bin/bash

killall -q polybar
polybar --config=$HOME/.config/polybar/config.ini topbar
