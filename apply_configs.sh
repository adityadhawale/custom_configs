#!/bin/bash

######## copy configs to their default locations
mkdir ~/.config/i3/background && cp background/real_madrid.jpg ~/.config/i3/background/

cp termite/config ~/.config/termite/

cp polybar/*.ini ~/.config/polybar/
mkdir ~/.config/polybar/scripts && cp polybar/scripts/menu ~/.config/polybar/scripts/

cp rofi/*.rasi ~/.config/rofi/
