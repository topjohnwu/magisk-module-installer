##  **Languages ​​available**

 - **[English](#eng)**
 - **[Italiano](#it)**
  <a name="eng">
  
![magisk_logo](http://i.imgur.com/jQu17Mp.png%29)

## **What is this fork?**
**This fork is a series of changes to the Magisk Module Template designed to facilitate the work of MOD developers**

**Currently the changes are these:**

 - Install app in `/data/app`

**Scheduled changes:**

 - Installation in `/system` if Magisk is not detected
 - Installation in `/system` if the module developer sets it up
 - AROMA included with easy configuration
 - Configurable Wipe without recovery(cache, dalvik-cache, system, data) in `config.sh`
 - Module installation in module (in `common/module`)
 - If the module developer enables a specific option, the template identifies the cpu architecture and installs the specific files (put by the developer in `common/arc/<name-architecture>`)
 - If the module developer enables a specific option, the template identifies the phone model (`ro.product.device`) and installs the specific files (put by the developer in `<common/phone/phone-model>`)
 
 **To contact us:**
 
 Ernesto Castellotti, founder PurifyOS
  - Mail: `erny.castell@gmail.com` (Only urgencies)
  - Telegram Profile: [ErnyTech](t.me/ErnyTech)
  - Telegram Community: [PurifyOS Community](https://goo.gl/oNNwwm)
  - Telegram Channel: [PurifyOS Channel](https://t.me/purifychannel)
  - Site: [PurifyOS](www.purifyos.it)
  
## **Magisk Module Template guide** ##

## How to Create a Magisk Module
1. Clone / download this repo
2. Open `config.sh`, follow the instructions written at the beginning of the file. You should at least change `config.sh` and `module.prop`
3. Zip your files, the zipped file is a flashable zip for both Magisk Manager and custom recoveries
4. Please check **Notes** for precautions

## Notes
- Module Template v4 is **NOT** backwards compatibile with any Magisk version lower than v13.1!
- (Windows aware!!) This git repo is configured to force Unix endlines on all necessary files. The line endings on these files should remain the Unix format. Please use advanced text editors like Sublime, Atom, Notepad++ etc. to edit the text files
- In `module.prop`, `version` is any string you like, so any fancy version name (e.g. ultra-beta-v0.0.0.1) is allowed. However, `versionCode` **MUST** be an integer. The value is used for version comparison.
- Make sure your module ID **doesn't contain any spaces**.
## **Specific guidance changes** ##

## Install apps in /data

 1. Create a folder in the `/data/app` of the module that remembers the app.
For example if I want to install Telegram I would choose as the name of the `telegram` folder.
However, the name of the folder does not change the operation of the app.
 2. Copy the apk to be installed in the folder you just created and rename it with the same folder name
Be careful if the name of folder is not the same as the name of apk file, the app may not be installed!
 3. Enable the `DATAAPP` option in the module `config.sh`

## **Technical explanation changes** ##

## Install apps in /data ##
The app  installation works in the `META-INF/com/google/android/update-binary` file, initially the module's `date/app` folder is extracted to  `/dev/tmp/install/` (variable `$INSTALLER`).

 1. If the `$DATAAPP` variable in `config.sh` is `true` and the `$BOOTMODE` variable is `false`, then the `$INSTALLER/data/app` permissions are changed to allow installation (exactly with the following function `set_perm_recursive $INSTALLER/data/app 1000 1000 0755 0644`) then the content of `$INSTALLER/data/app/` is copied to `/data/app` (with `cp -afR $INSTALLER/data/app/* $DATAPATH`, `$ DATAPATH` is variable that leads to `/data/app`)
 2. Instead, if the config `$DATAAPP` variable is `true` and the `BOOTMODE` variable is `true` then `$INSTALLER/data/app` permissions are changed to allow installation (exactly with the following function `set_perm_recursive $INSTALLER/data/app 1000 1000 0755 0644`) then with a `loop for` all  apk is detected in the subfolders of `$INSTALLER data/app` and set to the `$apk` variable, followed installing apps by pm (`pm install "$INSTALLER/data/app/$apk"`)
</a>
<a name="it">

![magisk_logo](http://i.imgur.com/jQu17Mp.png%29)

## **Traduzione completa in Italiano** ##
## **Che cos'è questo fork?** ##
**Questo fork è una serie di modifiche al Magisk Module Template ideate per facilitare il lavoro degli Sviluppatori di MOD**

**Modifiche attuali:**

 - Installazione app in /data/app
 
 **Modifiche pianificate:**
 - Installazione in /system se Magisk non è installato 
 - Installazione in /system se lo sviluppatore la imposta
 - AROMA incluso facilmente configurabile
 - Wipe configurabili senza necessità di recovery ( cache, dalvik-cache, system, data ) nel `config.sh`
 - Installazione dei moduli presenti dentro al modulo (in `common/module`)
 - Se lo sviluppatore di moduli abilita la specifica opzione, il template identifica l'architettura del cpu e installa i file specifichi (aggiunti dal dev in `common/arc/<name-architecture>`)
 - Se lo sviluppatore di moduli abilita la specifica opzione, il template identifica il modello del telefono (`ro.product.device`) e installa i file specifichi (aggiunti dallo sviluppatore in `common/arc/<phone-model>`)
 
 **Per contattarci:**
 
 Ernesto Castellotti, fondatore PurifyOS
  - Mail: `erny.castell@gmail.com` (Solo urgenze)
  - Profilo Telegram: [ErnyTech](t.me/ErnyTech)
  - Community Telegram [PurifyOS Community](https://goo.gl/oNNwwm)
  - Canale Telegram [PurifyOS Channel](https://t.me/purifychannel)
  - Sito: [PurifyOS](www.purifyos.it)
  
## **Guida Magisk Module Template** ##

## Come creare un  Magisk Module
1. Clona/scarica questa repo
2. Apri  `config.sh`, segui le istruzioni scritte all'inizio del file. Dovresti modificare almeno `config.sh` e `module.prop`
3. Crea uno zip dei tuoi file, il file zip è flashiabile sia dal Magisk Manager che dalle recovery custom
4. Per favore controlla le **Note** per precauzioni
## Note
- Il Module Template v4 **NON** è conpatibile con versioni di Magisk inferiori a v13.1!
- (Utenti Windows !!) Questa repo git è configurata per forzare le estensioni di linee Unix in tutti i file necessari. Le estensioni linee di questi file dovrebbero rimanere nel formato Unix. Per favore usa un editor di testo avanzato tipo Sublime, Atom, Notepad++ ecc. per editare i file di test
- Nel `module.prop`, `version` è consentita qualsiasi stringa che ti piace, quindi è consentito qualsiasi nome bizzarro (es. ultra-beta-v0.0.0.1). Mentre, `versionCode` deve essere intero. Il valore viene usato per comparare le versioni.
- Assicurati che il tuo ID del modulo **non contenga nessuno spazio**.
## **Guida specifica delle modifiche** ##

## Installare app in /data

 1. Creare una cartella in `/data/app` del modulo con un nome che ricordi l'app.
Per esempio se io voglio installare Telegram io sceglierei `telegram`  per il nome della cartella.
Tuttavia, il nome della cartella does non cambia il funzionamento dell'app
 2. Copiare l'apk da installare nella cartella che hai appena creato e rinominarlo con lo stesso nome della cartella.
Attenzione se il nome della cartella non è uguale al nome del file apk, l'app potrebbe non installarsi
 3. Abilita l'opzione `DATAAPP` nel `config.sh` del modulo
 
## **Spiegazione tecnica delle modifiche** ##

## Installare app in /data ##
L'installazione di app in /data/app lavora nel file  `META-INF/com/google/android/update-binary`, inizialmente la cartella `date/app` del modulo viene estratta in  `/dev/tmp/install/` (variabile `$INSTALLER`).

 1. Se la variabile `$DATAAPP` del `config.sh` è `true` e la variabile `$BOOTMODE` è `false`, allora i permessi di `$INSTALLER/data/app`  vengono modificati per permettere l'installazione (precisamente attraverso questa funzione `set_perm_recursive $INSTALLER/data/app 1000 1000 0755 0644`) poi il contenuto di `$INSTALLER/data/app/` viene copiato in `/data/app` (con `cp -afR $INSTALLER/data/app/* $DATAPATH`, dove `$DATAPATH` è una variabile che punta a `/data/app`)
 2. Invece se la variabile `$DATAAPP` del `config.sh` è `true` e la variabile `$BOOTMODE` è `true`, allora i permessi di `$INSTALLER/data/app`  vengono modificati per permettere l'installazione (precisamente attraverso questa funzione `set_perm_recursive $INSTALLER/data/app 1000 1000 0755 0644`) poi attraverso un `ciclo for` tutti gli apk rilevati nelle sottocartelle di `$INSTALLER data/app` vengono aggiunti alla variabile `$apk`, sucessivamente vengono installate le app con `pm` (`pm install "$INSTALLER/data/app/$apk"`)
 </a>
