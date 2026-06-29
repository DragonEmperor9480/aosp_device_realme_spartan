#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
# Inherit from lemonades device
$(call inherit-product, device/realme/spartan/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

PRODUCT_NAME := spartan
PRODUCT_DEVICE := spartan
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3371
ASCP_MAINTAINER := Amrut
PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX3371-user 14 UKQ1.230924.001 S.1d262cb-66b86-66b87 release-keys" \
    BuildFingerprint=realme/RMX3371/RE54E4L1:14/UKQ1.230924.001/S.1d262cb-66b86-66b87:user/release-keys \
    DeviceName=RE54E4L1 \
    DeviceProduct=RMX3371 \
    SystemDevice=RE54E4L1 \
    SystemName=RMX3371
