# Unified Hosts Adblock
Small adblock magisk module using unified host files from Steven Black [(Check out his github for more information)](https://github.com/StevenBlack/hosts)  
##Usage: 
#### First Enable Systemless Hosts in Magisk Manager
 - Open terminal then type:  
 `su`  
 `hosts`
 - Then follow the prompts to install host file of choice

#### Whitelist Instructions:
 - Create a text file on sdcard card "whitelist.txt"
 - Add whatever you want whitelisted to it
 - Run hosts script and choose whitelist option
 
#### To Remove Whitelist:
 - Just run hosts script and reinstall host file of choice

##[Support](https://forum.xda-developers.com/apps/magisk/magisk-unified-hosts-adblocker-t3559019)

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
