#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread
sed 's/ORANGE/GREEN/i' /proc/cmdline | sed 's/YELLOW/GREEN/i' > /data/local/tmp/cmdline
mount -o bind /data/local/tmp/cmdline /proc/cmdline

sed 's;^ro.*\.build\.fingerprint=.*;ro.build.fingerprint=Xiaomi/nitrogen/nitrogen:8.1.0/OPM1.171019.019/V10.2.1.0.OEDMIFK:user/release-keys;' /system/build.prop > /data/local/tmp/build.prop
mount -o bind /data/local/tmp/build.prop /system/build.prop
# The build.prop thing seems to be useless, but at some point Google are sure to catch on and check in the raw build.prop to see if we're abusing getprop/resetprop.
resetprop ro.build.fingerprint 'Xiaomi/nitrogen/nitrogen:8.1.0/OPM1.171019.019/V10.2.1.0.OEDMIFK:user/release-keys'
resetprop ro.bootimage.build.fingerprint 'Xiaomi/nitrogen/nitrogen:8.1.0/OPM1.171019.019/V10.2.1.0.OEDMIFK:user/release-keys'
#resetprop ro.vendor.build.fingerprint 'Xiaomi/nitrogen/nitrogen:8.1.0/OPM1.171019.019/V10.2.1.0.OEDMIFK:user/release-keys'
#The above caused issues (critical services not starting) on my Mi Max 3
