#!/bin/bash
cd ~/my_repos/qmk_firmware/
qmk flash -kb lily58 -km parker -bl avrdude
