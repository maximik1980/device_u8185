# Copyright (C) 2011 The Android Open Source Project
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

# CPU (msm7227a)
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_FPU := neon
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_BUILD_VARIANT=eng

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Target properties
TARGET_BOOTLOADER_BOARD_NAME := u8185
TARGET_OTA_ASSERT_DEVICE := u8186

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

USE_CAMERA_STUB := true

# Graphics
BOARD_EGL_CFG := device/huawei/u8185/config/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true

# Qcom stuff
TARGET_USES_OVERLAY := false
TARGET_HAVE_BYPASS  := false
TARGET_USES_C2D_COMPOSITION := false
TARGET_QCOM_HDMI_OUT := false
TARGET_FORCE_CPU_UPLOAD := true
TARGET_GRALLOC_USES_ASHMEM := true

#DIFFERENT STUFF
BOARD_NO_RGBX_8888 := true
TARGET_GRAPHICS_USE_LINELENGTH := true

# Recovery
DEVICE_RESOLUTION := 240x320
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8185/prebuilt/zImageTWRP
#TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
#TARGET_RECOVERY_PIXEL_FORMAT := RGBA_8888
#TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := device/huawei/u8185/recovery/recovery_keys.c
#BOARD_USE_CUSTOM_RECOVERY_FONT := '"font_7x16.h"' 

# Kernel
#TARGET_KERNEL_SOURCE := kernel/u8815-gb
#TARGET_KERNEL_CONFIG := cyanogenmod_u8185_defconfig
BOARD_KERNEL_CMDLINE := androidboot.hardware=u8185
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048

# WiFI 8150
#BOARD_WLAN_DEVICE := bcmdhd
#WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_WPA_SUPPLICANT_DRIVER := WEXT
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
#WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
#WIFI_DRIVER_FW_PATH_STA := "/system/etc/fw_4319.bin"
#WIFI_DRIVER_FW_PATH_AP := "/system/etc/fw_4319_apsta.bin"
#WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/fw_4319.bin nvram_path=/system/etc/nv_4319.txt"
#WIFI_DRIVER_MODULE_NAME := "dhd"


#RIL
#TARGET_PROVIDES_LIBRIL := true
TARGET_PROVIDES_LIRBRIL := /device/huawei/u8185/prebuilt2/ril/lib/libril-qc-1.so

#GPS
#BOARD_USES_QCOM_GPS := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8185

#Audio
#BOARD_HAVE_BLUETOOTH := true
TARGET_PROVIDES_LIBAUDIO := true

# /proc/mtd
#dev:    size   erasesize  name
#mtd0: 00500000 00020000 "boot"
#mtd1: 00500000 00020000 "recovery"
#mtd2: 00140000 00020000 "misc"
#mtd3: 00240000 00020000 "MTD-Crash"
#mtd4: 0ba00000 00020000 "system"
#mtd5: 03a00000 00020000 "cache"
#mtd6: 0a500000 00020000 "userdata"
#mtd7: 01400000 00020000 "userdata2"
#mtd8: 01400000 00020000 "cust"
#mtd9: 00140000 00020000 "MIBIB"
#mtd10: 00060000 00020000 "QCSBL"
#mtd11: 00800000 00020000 "OEMINFO"
#mtd12: 001a0000 00020000 "OEMSBL1"
#mtd13: 001a0000 00020000 "OEMSBL2"
#mtd14: 01e00000 00020000 "AMSS"
#mtd15: 00600000 00020000 "EFS2"
#mtd16: 00060000 00020000 "APPSBL"
#mtd17: 00040000 00020000 "FOTA"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0ba00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a500000

# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 262144 
