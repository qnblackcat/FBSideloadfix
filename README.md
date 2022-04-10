# FBSideloadfix

Normally, when sideloading Facebook, you'll be logged out after you kill Facebook from the app switcher. Same thing happens with sideloaded Instagram. Opa334 made a fix for Instagram log-in (https://github.com/opa334/IGSideloadFix), and surprisingly, his fix also works for Facebook.

**Please DO NOT bother opa334 if you have any issues Facebook login because he has never and will never support Facebook!**

If you only need the fix, get it from the [Release page](https://github.com/qnblackcat/FBSideloadfix/releases).

# Facebook Wolf

This is a brief tutorial on how to make a Facebook Wolf IPA (or similar Facebook tweaks). Requires [theos](https://github.com/theos/theos) and [theos-jailed](https://github.com/kabiroberai/theos-jailed).

1. Prepare a decrypted IPA of Facebook

2. Clone this repo

```
git clone https://github.com/qnblackcat/FBSideloadfix.git
```

3. Open `Makefile` and edit the path to the decrypted Facebook ipa

4. Download the deb of [Facebook Wolf]() and extract it

5. Put the `Wolf.dylib` in the `Tweaks` folder, and the tweak's bundle `Wolf.bundle` in the `Resources` folder of this repo

6. `cd` into the root folder and run `make package FINALPACKAGE=1` to compile the IPA

7. Optional: if you want to add more tweaks, put the dylibs in the `Tweaks` folder and its resources (bundle) in the `Resources` folder. Finally, add the dylib's name to the `Makefile`
