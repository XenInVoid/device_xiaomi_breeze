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

# Axion Stuff
TARGET_ENABLE_BLUR := true
AXION_CAMERA_REAR_INFO := 108,2
AXION_CAMERA_FRONT_INFO := 13
AXION_MAINTAINER := Xen
AXION_PROCESSOR := Snapdragon_4_Gen_2_AE

# Enable or disable ScrollOptimizer globally
persist.sys.perf.scroll_opt = true

# Heavy app handling mode
# 0 - Disable heavy app classification
# 1 - Enable dynamic detection (based on frame duration and buffer load)
# 2 - Treat all apps as heavy for performance
persist.sys.perf.scroll_opt.heavy_app = 2

TARGET_INCLUDE_AXFX := true

TARGET_INCLUDES_LOS_PREBUILTS := false
