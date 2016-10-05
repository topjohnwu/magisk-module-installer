#!/system/bin/sh

# This script will be executed in post-fs mode
# More info in the main Magisk thread

setprop persist.camera.eis.enable 1;
setprop persist.camera.is_type 4;