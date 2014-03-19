# Copyright (C) 2012 The Android Open Source Project
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

PRODUCT_COPY_FILES += device/huawei/u8185/prebuilt/kernel:kernel

$(call inherit-product, vendor/huawei/u8185/u8185_base.mk)

$(call inherit-product, build/target/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.u8185.rc:root/init.u8185.rc \
    $(LOCAL_PATH)/prebuilt/ueventd.u8185.rc:root/ueventd.u8185.rc

# graphics + last 4 from htc msm7x30
PRODUCT_PACKAGES += \
    libgenlock \
    gralloc.msm7k \
    copybit.msm7k \
    hwcomposer.msm7k \
    librs_jni
#    libOmxCore \
#    libOmxVenc \
#    libOmxVdec

# lights
PRODUCT_PACKAGES += \
    lights.msm7k

# audio
PRODUCT_PACKAGES += \
    audio.primary.msm7k \
    audio_policy.msm7k
#    audio.a2dp.default \
#    libaudioutils

# gps
PRODUCT_PACKAGES += \
    gps.u8185

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/etc/AudioFilter.csv:system/etc/AudioFilter.csv

# keys
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/u8185_keypad.kl:system/usr/keylayout/u8185_keypad.kl

# hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

# misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/etc/media_profiles.xml:system/etc/media_profiles.xml

# wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Copy all RIL-related stuff
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt2/ril/bin/netmgrd:system/bin/netmgrd \
    $(LOCAL_PATH)/prebuilt2/ril/bin/qmiproxy:system/bin/qmiproxy \
    $(LOCAL_PATH)/prebuilt2/ril/bin/qmuxd:system/bin/qmuxd \
    $(LOCAL_PATH)/prebuilt2/ril/bin/rild:system/bin/rild \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libauth.so:system/lib/libauth.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libcm.so:system/lib/libcm.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libdiag.so:system/lib/libdiag.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libdsm.so:system/lib/libdsm.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libdss.so:system/lib/libdss.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libhwrpc.so:system/lib/libhwrpc.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libnv.so:system/lib/libnv.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/liboncrpc.so:system/lib/liboncrpc.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libpbmlib.so:system/lib/libpbmlib.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libqmi.so:system/lib/libqmi.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libqc-opt.so:system/lib/libqc-opt.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libqmiservices.so:system/lib/libqmiservices.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libqueue.so:system/lib/libqueue.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libreference-ril.so:system/lib/libreference-ril.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libril.so:system/lib/libril.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libshareril.so:system/lib/libshareril.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libwms.so:system/lib/libwms.so \
    $(LOCAL_PATH)/prebuilt2/ril/lib/libwmsts.so:system/lib/libwmsts.so

# Audio
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/prebuilt2/audio/libasound.so:system/lib/libasound.so \
#    $(LOCAL_PATH)/prebuilt2/audio/libaudio.so:system/lib/libaudio.so \
#    $(LOCAL_PATH)/prebuilt2/audio/libaudioalsa.so:system/lib/libaudioalsa.so \
#    $(LOCAL_PATH)/prebuilt2/audio/libaudioeffect_jni.so:system/lib/libaudioeffect_jni.so \
#    $(LOCAL_PATH)/prebuilt2/audio/libaudioeq.so:system/lib/libaudioeq.so \
#    $(LOCAL_PATH)/prebuilt2/audio/libaudioflinger.so:system/lib/libaudioflinger.so \
#    $(LOCAL_PATH)/prebuilt2/audio/libaudiopolicy.so:system/lib/libaudiopolicy.so

# Huawei RIL implementation
#FRAMEWORKS_BASE_SUBDIRS += ../../$(LOCAL_PATH)/ril/

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# LDPI assets
PRODUCT_LOCALES += ldpi mdpi
PRODUCT_AAPT_CONFIG := small ldpi mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_NAME := huawei_u8186
PRODUCT_DEVICE := u8186
PRODUCT_BOARD := u8186
PRODUCT_MODEL := U8186
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := huawei
TARGET_BOOTANIMATION_NAME := vertical-240x320
