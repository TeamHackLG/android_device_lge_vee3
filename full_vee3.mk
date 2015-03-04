#
# Copyright 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit device configuration
$(call inherit-product, device/lge/vee3/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vee3
PRODUCT_NAME := full_vee3
PRODUCT_BRAND := LGE
PRODUCT_MANUFACTURER := LGE

# Project Vee3
ifeq ($(PROJECT_VEE3_DUALSIM),true)
	PRODUCT_MODEL := L3 II Dual
	PRODUCT_RELEASE_NAME := L3 II Dual
else
	PRODUCT_MODEL := L3 II Single
	PRODUCT_RELEASE_NAME := L3 II Single
endif
