#
# Copyright (C) 2024 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit core TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device-specific configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifiers
PRODUCT_NAME := twrp_air
PRODUCT_DEVICE := air
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 13C 5G
PRODUCT_MANUFACTURER := Xiaomi

# Recovery-specific overrides
PRODUCT_SYSTEM_NAME := air
PRODUCT_SYSTEM_DEVICE := air

# Build type
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=air \
    PRODUCT_NAME=air

# Shipping API level 
PRODUCT_SHIPPING_API_LEVEL := 33

# Disable unnecessary services in recovery
PRODUCT_SYSTEM_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1

# Fastboot / recovery identity
PRODUCT_SYSTEM_PROPERTIES += \
    ro.build.product=air \
    ro.product.device=air
