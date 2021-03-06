#!/bin/bash

# Cleanup
rm -f bin/sys_config.bin bin/sdcard-boot0 bin/sdcard-boot1

# Generate binary FEX
cmd/cubie-fex2bin bin/raw/sys_config.fex bin/sys_config.bin

# Generate SPL (boot0) + fex
cmd/cubie-uboot-spl bin/raw/u-boot-spl-sun8iw6p1.bin bin/sys_config.bin bin/sdcard-boot0

# Generate u-boot binary + fex
cmd/cubie-uboot bin/raw/u-boot-sun8iw6p1.bin bin/sys_config.bin bin/sdcard-boot1
