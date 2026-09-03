#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common matrixx configurations
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

$(call inherit-product, vendor/matrixx/config/BoardConfigReservedSize.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/breeze/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/breeze/breeze-vendor.mk)

## Device identifier
PRODUCT_DEVICE := breeze
PRODUCT_NAME := matrixx_breeze
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

# Matrixx Flags
MATRIXX_MAINTAINER := Xen
TARGET_INCLUDE_MATLOG := true
TARGET_CUSTOM_UDFPS := false
WITH_GMS := false
BYPASS_CHARGE_SUPPORTED := true
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
WITH_BCR := true
TARGET_OPTIMIZED_DEXOPT := true
PRODUCT_NO_CAMERA := false
USE_REALITY_ENGINE := false
HBM_SUPPORTED := false
TARGET_BOOT_ANIMATION_RES := 1080
