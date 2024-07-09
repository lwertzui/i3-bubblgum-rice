#! /bin/bash
echo "cloning repo"
git clone -q https://github.com/lwertzui/i3-bubblgum-rice
echo "--> done"
echo
echo "starting install"
sh $HOME/i3-bubblgum-rice/install.sh
echo
echo "cleaning up"
rm -rf $HOME/i3-bubblgum-rice
echo "--> done"
