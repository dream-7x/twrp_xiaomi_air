#
# Copyright (C) 2024 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# 64-bit only
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Shipping API 
PRODUCT_SHIPPING_API_LEVEL := 33

# Fastbootd 
PRODUCT_PACKAGES += \
    fastbootd

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# First-stage ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*, \
        $(DEVICE_PATH)/recovery/root, \
        $(TARGET_COPY_OUT_VENDOR_BOOT))

# Kernel modules
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*.ko, \
        $(DEVICE_PATH)/modules, \
        $(TARGET_COPY_OUT_VENDOR_BOOT)/lib/modules) \
    $(DEVICE_PATH)/modules/modules.dep:$(TARGET_COPY_OUT_VENDOR_BOOT)/lib/modules/modules.dep \
    $(DEVICE_PATH)/modules/modules.alias:$(TARGET_COPY_OUT_VENDOR_BOOT)/lib/modules/modules.alias \
    $(DEVICE_PATH)/modules/modules.softdep:$(TARGET_COPY_OUT_VENDOR_BOOT)/lib/modules/modules.softdep \
    $(DEVICE_PATH)/modules/modules.load.recovery:$(TARGET_COPY_OUT_VENDOR_BOOT)/lib/modules/modules.load.recovery

# Recovery properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1
