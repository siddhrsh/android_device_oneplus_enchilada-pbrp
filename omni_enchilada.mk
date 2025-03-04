#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := enchilada
DEVICE_PATH := device/oneplus/enchilada

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/oneplus/enchilada/device.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := enchilada
PRODUCT_NAME := omni_enchilada
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus A6000
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=oneplus6 \
    BUILD_PRODUCT=OnePlus6 \
    TARGET_DEVICE=OnePlus6 \
	PRODUCT_DEVICE=OnePlus6

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
