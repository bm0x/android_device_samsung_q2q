#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configuration
$(call inherit-product, device/samsung/q2q/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)


# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2208
TARGET_SCREEN_WIDTH := 1768

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_q2q
PRODUCT_DEVICE := q2q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-F926B
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_SHIPPING_API_LEVEL := 30

BUILD_FINGERPRINT := "samsung/q2qxeea/q2q:13/TP1A.220624.014/F926BXXS3EWD9:user/release-keys"
PRIVATE_BUILD_DESC := "q2qxxx-user 13 TP1A.220624.014 F926BXXS3EWD9 release-keys"
