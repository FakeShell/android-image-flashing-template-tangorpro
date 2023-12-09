#!/bin/bash

fastboot flash boot data/boot.img
fastboot flash userdata data/userdata.img

fastboot reboot

echo "Flashing completed"
