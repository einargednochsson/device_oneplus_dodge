#
# Copyright (C) 2021-2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dodge device
$(call inherit-product, device/oneplus/dodge/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_INCLUDE_AXFX := true
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120

# LineageOS apps
ifneq ($(WITH_GMS),true)
TARGET_INCLUDES_LOS_PREBUILTS := true
endif

# BCR
TARGET_PREBUILT_BCR := true

# Charging
BYPASS_CHARGE_SUPPORTED := false

# Camera information (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 50,50,50
AXION_CAMERA_FRONT_INFO := 32

# Maintainer name (underscores become spaces in the UI)
AXION_MAINTAINER := Einar_Gednochsson

# Processor name (underscores become spaces)
AXION_PROCESSOR := Snapdragon_8_Elite

PRODUCT_NAME := lineage_dodge
PRODUCT_DEVICE := dodge
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2653

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 16 BP2A.250605.015 1772783799359 release-keys" \
    BuildFingerprint=OnePlus/CPH2653EEA/OP5D55L1:16/BP2A.250605.015/V.R4T3.45a1268-22c76c3-22e1011:user/release-keys \
    DeviceName=OP5D55L1 \
    DeviceProduct=CPH2653 \
    SystemDevice=OP5D55L1 \
    SystemName=CPH2653
