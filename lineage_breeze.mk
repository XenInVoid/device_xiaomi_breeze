#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_DISABLE_EPPE := true
# Inherit common lineage configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, vendor/lineage/config/BoardConfigReservedSize.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/breeze/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/breeze/breeze-vendor.mk)

## Device identifier
PRODUCT_DEVICE := breeze
PRODUCT_NAME := lineage_breeze
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 24066PC95I
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="breeze-user 16 BP2A.250605.031.A3 OS3.0.302.0.WNUINXM release-keys" \
    BuildFingerprint=POCO/breeze_p_in/breeze:16/BP2A.250605.031.A3/OS3.0.302.0.WNUINXM:user/release-keys \
    DeviceName=breeze \
    DeviceProduct=breeze_p_in

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Use blur 
TARGET_ENABLE_BLUR := true 

# AX-FX instead of dolby or viper 
TARGET_INCLUDE_AXFX := true

# Camera information 
AXION_CAMERA_REAR_INFO := 108,2
AXION_CAMERA_FRONT_INFO := 13

# Maintainer name (underscores become spaces in the UI)
AXION_MAINTAINER := Xen

# Processor name (underscores become spaces)
AXION_PROCESSOR := Snapdragon_4_Gen_2_AE

BYPASS_CHARGE_SUPPORTED ?= false

# High Brightness Mode (HBM)
HBM_SUPPORTED := true 

# doze fix
# for devices with doze/sensor related issues 
TARGET_NEEDS_DOZE_FIX := true

TARGET_INCLUDES_LOS_PREBUILTS := false

# Refresh Rate
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
