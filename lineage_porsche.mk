#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from porsche device
$(call inherit-product, device/realme/porsche/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_porsche
PRODUCT_DEVICE := porsche
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := Realme
PRODUCT_MODEL := RMX3312

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint="realme/RMX3312/RE58B2L1:14/UKQ1.230924.001/S.1a33387-2-4:user/release-keys" \
    BuildDesc="RMX3312-user 14 UKQ1.230924.001 S.1a33387-2-4 release-keys" \
    DeviceName=RMX3312 \
    DeviceProduct=RE58B2L1 \
    SystemDevice=RE58B2L1 \
    SystemName=RMX3312
    
#mist os stuff
MISTOS_MAINTAINER := ShivaOP
TARGET_ENABLE_BLUR := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false
WITH_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true 
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_TOUCHGESTURES := true
TARGET_HAS_UDFPS := true
TARGET_USES_OPLUS_CAMERA := true
