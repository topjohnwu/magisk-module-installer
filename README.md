# SafetyPatcher

## Description
Fixes SafetyNet basicIntegrity & CTS on Xiaomi Mi Max 3 and most devices, after you've applied magiskhide
## Changelog
- V1 - Adds a load of stuff so that it now also has a GUI (run safetypatcher in shell as root) and also passes CTS.
## Requirements
- Magisk
- Magisk Hide (https://www.didgeridoohan.com/magisk/MagiskHide)
## Instructions
1. Flash in Magisk Manager
2. Reboot

Or to use without Magisk (TODO: update for V1)...

1. Enable ADB.
3. Run `adb shell sed 's/ORANGE/GREEN/i' /proc/cmdline | sed 's/YELLOW/GREEN/i' > /data/local/tmp/cmdline` from computer with connected and authorized ADB/USB
4. `adb shell mount -o bind /data/local/tmp/cmdline /proc/cmdline` from computer with connected and authorized ADB/USB
5. Comment on XDA to share your experience
