# Unified Hosts Adblock
Small adblock magisk module using unified host files from Steven Black [(Check out his github for more information)](https://github.com/StevenBlack/hosts)  
##Usage: 
#### First Enable Systemless Hosts in Magisk Manager
 - Open terminal then type:  
 `su`  
 `hosts`
 - Then follow the prompts to install host file of choice

#### Whitelist Instructions:
 - Create a text file on sdcard card "whitelist"
 - Either add exact lines you want remove to it -> Run hosts script and choose whitelist option
 - Or add regex for lines you want removed -> Run hosts script and choose whitelist regex option
 
#### To Remove Whitelist:
 - Just run hosts script and reinstall host file of choice

## [Support](https://forum.xda-developers.com/apps/magisk/magisk-unified-hosts-adblocker-t3559019)

## Changelog
v1.0
 - Initial release

v1.1 
 - Changed from using curl to wget and built in wget (not all roms have curl apparently)

v1.2
 - Made minor changes to Readme, removed support and donate links from module.prop, and removed changelog to meet standards of magisk manager 4.2 update

v1.3
 - Removed broken disable option and added directions for disabling hosts mod

v1.4
 - Added date hosts were last updated (so you can determine if yours need updated)
 - Added whitelist feature
 - Minor restructuring of hosts script header

v1.5
 - Updated to magisk 11.5 (template v2)
 
v1.6
 - Updated to magisk 11.6 (template v3)
 
v1.7
 - Added pixel support
 
v1.8
 - Added all possible letter combinations (order no longer matters)
 - Fixed up pixel support - still WIP (thanks to @ahrion at xda-developers)
 - Fixed Last Updated date change
 - Added update check notification at beginning of script

v1.9
 - Fixed last updated date change
 - Fixed whitelist option
 
v2.0
 - Moved included wget to out of system completely, hosts script is only file that will use it (prevents potential conflicts). Thanks to @rignfool and @veez21
 - Added wildcard support to whitelist
 
v2.1
 - Update for magisk 13.1 (NOTE: previous versions of magisk are no longer compatible)
