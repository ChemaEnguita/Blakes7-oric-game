# Blake's 7

This is the source code for the Oric game Blake's 7.
To build the disk image from this sources, you need the [Oric Software Development Kit](https://osdk.org/index.php?page=download).

## Overview

**Blake's 7** is a point-and-click adventure game developed for the Oric platform, inspired by classic LucasArts titles like *Maniac Mansion* and *The Secret of Monkey Island*.

## Features

- **Genre**: Point-and-click adventure
- **Platform**: Oric 8-bit computers
- **Inspiration**: Classic LucasArts adventure games

## System Requirements

- **Hardware**: Oric-1 or Oric Atmos computer
- **Storage**: Floppy disk drive

## Installation

**Download**: Obtain the game files from the [Defence Force website](https://www.defence-force.org/index.php?game=blakes7&page=games).

You can play the game using an emulator, such as Oricutron or Euphoric. Simply boot with the
game disk image file, or select it in the first drive (A) in your emulator and reboot. If
your emulator needs it, remember to select the emulation of a Microdisc controller.

To play the game in a real Oric with a real floppy drive, you should create a physical disk
from the disk image. You can use writedsk for that operation. The image file corresponds
to a disk with 2 sides, 40 tracks and 17 sectors, so it can be written to a 3" disk. Beware 
the game will only work if your drive has two heads.

writedsk is an old real mode DOS application, so you'll need a computer running Windows 98 or less
in order to use it. Other alternatives have been pointed out, such as SAMDisk, but I never
tried those.

You can download writedsk from the Oric Tools repository in GitHub:
https://github.com/oric-international/oric-tools/tree/master/euphoric-tools/disk_image_tools/real_disk_tools

And read about SAMDisk here: http://simonowen.com/samdisk/

The game has also been tested on other floppy emulators, such as HxC and Cumulus. Follow
the instructions of your device about how to use the disk image file.


## Legal Notice

*Blake's 7* is a fan-made game created as a tribute to the original television series. All rights to *Blake's 7* are owned by B7 Media. This game is non-commercial and intended for personal use only.

This game itself is distributed under the Creative Commons v. 4.0 license: CC BY-NC-ND 4.0 and is © José María Enguita—2017.

## Credits

- **Development**: José María Enguita
- **Publisher**: Defence Force

For more information and updates, visit the [Defence Force website](https://www.defence-force.org/index.php?game=blakes7&page=games).
