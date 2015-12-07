#!/bin/sh

mousesettings="syndaemon -i 0.6 -K -d && xinput --set-prop 13 'Synaptics Two-Finger Scrolling' 1 1"
eval $mousesettings
echo $mousesettings
