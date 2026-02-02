#
# Copyright (C) 2022 The TWRP Open Source Project
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from our custom product configuration.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs.
$(call inherit-product, device/xiaomi/air/device.mk)

## Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := air
PRODUCT_NAME := twrp_air
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := air
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := air
