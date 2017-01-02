## !! Please update this README.md file for online Repo submission !!
You can edit your `README.md` within Github's online editor, it also has an preview button!  
Check the [Markdown Cheat Sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) for markdown syntaxes, it's super easy!  

## How to Create a Magisk Module
1. Clone / download this repo
2. Open `config.sh`, follow the instructions written at the beginning of the file. You should at least change `config.sh` and `module.prop`
3. Zip your files, the zipped file is a flashable zip for both Magisk Manager and custom recoveries
4. Please check **Notes** for precautions

## How to Request a New Repo
1. Fork [this repo](https://github.com/topjohnwu/magisk-module-template)
2. Create your own Magisk Module as stated above
3. Push your changes to Github
4. Change the description of the Github repo to **the id of your module. This is important! Never change it to anything else!**
5. Open an issue in [topjohnwu/Magisk_Repo_Central](https://github.com/topjohnwu/Magisk_Repo_Central/issues/new)  
   Please include your repo link so I can check and clone it
6. Your repo should be cloned into [Magisk-Modules-Repo](https://github.com/Magisk-Modules-Repo), and you should receive an email to become the collaborator of that repo so you can edit it in the future.

## Notes
1. (Windows aware!!) This git repo is configured to force Unix endlines on all necessary files. The line endings on these files should remain the Unix format. Please use advanced text editors like Sublime, Atom, Notepad++ etc. to edit the text files
2. In `module.prop`, `version` is any string you like, so any fancy version name (e.g. ultra-beta-v0.0.0.1) is allowed. However, `versionCode` **MUST** be an integer. The value is used for version comparison.
2. Make sure your module ID **doesn't contain any spaces**.
3. (For repo developers) Magisk Manager monitors all repo's `master` branch. So any changes to the branch `master` will be reflected to all users immediately. If you are working on an update for a module, please work on another branch, make sure it works, and then merge the changes back to `master`.

## Best Practice for Updating a Repo
1. Open a new branch, and start update your files on the new branch
2. Test if everything works fine
3. Bump up the `versionCode` in `module.prop`, or Magisk Manager won't know that your module is updated!
4. Merge the changes back to master, all users shall now receive the update in Magisk Manager
