# Bome Midi Translator Pro automatic preset switcher

> An [AutoHotKey (AHK)](https://www.autohotkey.com/) script to automatically change [Bome Midi Translator Pro (MTP)](https://www.bome.com/products/miditranslator) preset based on Windows focus.

## Overview

[Bome Midi Translator Pro (MTP)](https://www.bome.com/products/miditranslator) is a software used to map input controllers (keystroke, midi in, serial, ...) to output controllers (keystroke, midi out, serial, mouse...). My friend Didier is using it a lot, because of his disabled hands, mouse and keyboard can be painful for him. Consequently, he prefers using his midi devices (midi pad, midi usb keyboard) to control his softwares (VEGAS video editing, Cubase sequencer...). He have define several presets in MTP, one for each software, allowing him to reuse the same midi controller for different task depending of the software he use. Manually switching between MTP presets each time you change software is not convenient, so Didier ask me to develop a software to help him.

The idea was to detect the Window which has the focus, and if the windows title is a known software which has a defined MTP preset, send a hotkey to MTP to switch to this preset.

AHK seems to be a good way to do that on Windows and as this script can be useful for others, I've decided to put it on GitHub.

## Usage

* create your presets in [Bome Midi Translator Pro (MTP)](https://www.bome.com/products/miditranslator) and assign them a shortcut key (for example [ALT] + [CTRL] + [F?] where F? is a function key from F1 to F12).
* Install [AutoHotKey (AHK)](https://www.autohotkey.com/)
* get the [source code](https://github.com/Fabrice-Deshayes-aka-Xtream/mtp_preset_auto_switcher/blob/master/src/MTP_preset_auto_switcher.ahk) and adapt it to your needs (i recommand to use [VSCode](https://code.visualstudio.com/) it's a nice free text editor with plugin for colored syntax and auto completion of AHK scripts)
    * adapt `WinActive("???")` to the title of the windows of your software
    * adapt `SendInput !^{F2}` to the shortcut of your preset un MTP (!^ mean ALT + CTRL)
    * duplicate the `if else` block if you need more than 3 presets
* when your source is OK, you can compile it as an exe file (right click on it -> Compile Script)
* if you want to autostart your script with Windows:
    * press WIN + R to run this command: `shell:startup`. This will open your startup folder
    * put your compiled script in this folder. that's all !
