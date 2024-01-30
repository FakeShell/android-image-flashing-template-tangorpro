#!/bin/bash

fastboot flash boot data/boot.img
fastboot flash userdata data/userdata.img
fastboot --disable-verity --disable-verification flash vbmeta_a data/vbmeta.img
fastboot --disable-verity --disable-verification flash vbmeta_b data/vbmeta.img

fastboot reboot

echo "Flashing completed"
