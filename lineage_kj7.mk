#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/tecno/kj7/device.mk)

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_kj7
PRODUCT_DEVICE := kj7
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := TECNO
BOARD_VENDOR := TECNO
PRODUCT_MODEL := TECNO Spark 20

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=KJ7 \
    BuildFingerprint=TECNO/KJ7-OP/TECNO-KJ7:12/SP1A.210812.016/250115V1871:user/release-keys

LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

