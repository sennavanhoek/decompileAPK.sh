### decompileAPK.sh
A simple script that uses apktool and fernflower to unpack and decompile all apk in the target folder.  
Both apktool and fernflower are used because fernflower is better at decompiling code but if you only use dex2jar + fernflower you will miss resources like the manifest.

### Usage
Before using decompileAPK.sh you should place [dex2jar](https://github.com/pxb1988/dex2jar) and [fernflower](https://github.com/fesh0r/fernflower) in the appropriate folders and install [apktool](https://ibotpeaches.github.io/Apktool/).  
If everything is in place you can put all the APKs you want to take a closer look at in the targets folder and run the script.  
