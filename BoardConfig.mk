# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from common msm7x27
-include device/htc/msm7x27-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := marvel
TARGET_DEVICE := marvel
TARGET_CPU_ABI := armeabi
TARGET_RECOVERY_FSTAB := device/htc/marvel/ramdisk/fstab.qcom
RECOVERY_FSTAB_VERSION := 2

### Compass
BOARD_VENDOR_COMPASS_HARDWARE := akm8975

### Kernel related stuff
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null androidboot.hardware=marvel
BOARD_KERNEL_BASE := 0x12c00000
BOARD_KERNEL_PAGESIZE := 2048
# BOARD_CMDLINE := board_marvel.disable_uart3=0 board_marvel.usb_h2w_sw=0 board_marvel.disable_sdcard=0 diag.enabled=0 board_marvel.debug_uart=0 smisize=0 userdata_sel=0 androidboot.emmc=false androidboot.pagesize=2048 androidboot.batt_poweron=good_battery androidboot.mid=PG7610000 androidboot.keycaps=qwertz androidboot.mode=normal zygote_oneshot=off kmemleak=off no_console_suspend=1 console=null

### Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 3824192
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 9860304
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x10400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09600000
BOARD_FLASH_BLOCK_SIZE := 262144

### Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/htc/msm7x27-common/recovery/graphics.c
BOARD_USES_MMCUTILS := false
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_MISC_PARTITION := true