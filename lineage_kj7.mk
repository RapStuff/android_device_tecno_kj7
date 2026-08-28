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




# AVIUM_VERSION_APPEND_TIME_OF_DAY is a boolean flag to indicate
# whether to append time of day to the build date.
AVIUM_VERSION_APPEND_TIME_OF_DAY ?= false
# Maintainer
# AVIUM_MAINTAINER is a string that represents the maintainer of the build.
AVIUM_MAINTAINER ?= Rapli

# Settings
# Soc model name
AVIUM_SETTINGS_SOC_MODEL_NAME ?= MediaTek Helio G99 Ultimate
# Device code name
AVIUM_SETTINGS_DEVICE_CODENAME ?= Spark 20 Pro+

# GMS
# WITH_GMS is a boolean flag to indicate 
# whether to include Google Mobile Services (GMS) in the build.
WITH_GMS ?= true
# LatinIMEGooglePrebuilt
# Only works on vanilla builds,
# GMS builds will use the Google IME from GMS.
TARGET_INCLUDE_GOOGLEIME ?= false
TARGET_GOOGLEIME_OVERRIDE_IME ?= false

# Spoof Props
# Set to true to enable spoofing fake props.
# For letting apps think they are running on a locked device.
AVIUM_FORCE_SET_FAKE_PROP ?= false

# Blur Effect
# The blur usually enabled on Android 16 QPR2.
# If the blur not enabled, set to true to force enable blur for SystemUI.
TARGET_FORCE_ENABLE_BLUR ?= true
