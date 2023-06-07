#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from q2q device
$(call inherit-product, device/samsung/q2q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_q2q
PRODUCT_DEVICE := q2q
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-F926B

PRODUCT_SYSTEM_NAME := q2qxxx
PRODUCT_SYSTEM_DEVICE := qssi

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus9-user 13 TP1A.220905.001 R.107ea31_1-1947f release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := samsung/q2qxeea/q2q:13/TP1A.220624.014/F926BXXS3EWD9:user/release-keys
