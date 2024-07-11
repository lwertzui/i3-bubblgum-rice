#!/bin/bash

echo "copying i3 config"
rsync $HOME/.config/i3/config $HOME/i3-bubblgum-rice/configs/i3/config
echo "--> done"
echo
echo "copying terminator config"
rsync $HOME/.config/terminator/config $HOME/i3-bubblgum-rice/configs/terminator/config
echo "--> done"
echo
echo "copying polybar config"
rsync $HOME/.config/polybar/config.ini $HOME/i3-bubblgum-rice/configs/polybar/config.ini
echo "--> done"
echo
echo "copying picom config"
rsync $HOME/.config/picom/picom.conf $HOME/i3-bubblgum-rice/configs/picom/picom.conf
echo "--> done"
echo
echo "copying rofi config"
rsync $HOME/.config/rofi/config.rasi $HOME/i3-bubblgum-rice/configs/rofi/config.rasi
echo
echo "--> done"
echo "copying xborder config"
rsync $HOME/.config/xborder/config.json $HOME/i3-bubblgum-rice/configs/xborders/config.json
echo "--> done"
echo

