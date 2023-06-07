# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Boot animation
TARGET_SCREEN_HEIGHT := 2208
TARGET_SCREEN_WIDTH := 1768

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/samsung/sm8350-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/samsung/q2q/q2q-vendor.mk)
