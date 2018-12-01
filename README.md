# Bome Midi Translator Pro automatic profile switcher

> An [AutoHotKey (AHK)](https://www.autohotkey.com/) script to automatically change [Bome Midi Translator Pro (MTP)](https://www.bome.com/products/miditranslator) profile based on Windows focus.

## Overview

[Bome Midi Translator Pro (MTP)](https://www.bome.com/products/miditranslator) is a software used to map input controllers (keystroke, midi in, serial, ...) to output controllers (keystroke, midi out, serial, mouse...). My friend Didier is using it a lot, because of his disabled hands, mouse and keyboard can be painful for him. Consequently, he prefers using his midi devices (midi pad, midi usb keyboard) to control his softwares (VEGAS video editing, Cubase sequencer...). He have define several profiles in MTP, one for each software, allowing him to reuse the same midi controller for different task depending of the software he use. Manually switching between MTP profiles each time you change software is not convenient, so Didier ask me to develop a software to help him.

The idea was to detect the Window which has the focus, and if the windows title is a known software which has a defined MTP profile, send a hotkey to MTP to switch to this profile.

AHK seems to be a good way to do that on Windows and as this script can be useful for others, I've decided to put it on GitHub.
