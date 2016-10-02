# How to Create A New Repo
1. Fork this repo
2. Edit "config.sh", and follow the instructions in the script file to create your own Magisk Module. Note that you might want to use Notepad++ on Windows, since the script files are using Unix endline.
3. Edit "module.prop" with the manifest of your module
4. Edit "changelog.txt", the info will be shown in Magisk Manager
5. Edit the description of your Github repo to the ID of the module. Magisk Manager uses that value as identification
5. Contact @topjohnwu on XDA for a request to add a new module repo. You'll get an empty repo with permission only given to you and the owners of Magisk-Modules-Repo.
6. Push your module to the new repo created for you. You can push updates directly to your repo in the future as you wish.

# Notes
1. In the module.prop file, version is any string you like, any fancy version name (e.g. ultra-beta-v0.0.0.1) is allowed. However, the versionCode "MUST" be an integer. The value is used for version comparison.
2. Make sure the ID in module.prop doesn't contain any spaces.
3. Any changes to the branch "master" will be reflected to all users immediately. If you are working on an update for a module, please work on another branch, make sure it works, and then merge the changes to master.

# Update A Module in a Nutshell
1. Open a new branch, and start working on it
2. Test if everything works
3. Bump up the versionCode in module.prop, or Magisk Manager won't know that your module is updated!
4. Edit changelog.txt with the changes you made
3. Merge the changes to master, all users will now receive the update in Magisk Manager
