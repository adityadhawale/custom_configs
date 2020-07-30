#!/bin/bash

######## copy configs to their default locations
mkdir ~/.config/i3/background && cp background/real_madrid.jpg ~/.config/i3/background/
cp i3/locker ~/.config/i3/ && cp i3/lock.png ~/.config/i3/ cp i3/config ~/.config/i3/

cp termite/config ~/.config/termite/

cp polybar/*.ini ~/.config/polybar/
mkdir ~/.config/polybar/scripts && cp polybar/scripts/menu ~/.config/polybar/scripts/ && cp polybar/spotify_status.py ~/.config/polybar/spotify_status.py

cp rofi/*.rasi ~/.config/rofi/

cp nvim/init.vim ~/.config/nvim/
