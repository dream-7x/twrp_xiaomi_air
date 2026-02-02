#
# Copyright (C) 2022 The TWRP Open Source Project
#
LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),air)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif