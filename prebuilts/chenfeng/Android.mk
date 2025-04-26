#
# Copyright (C) 2025 The TWRP Open Source Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := chenfeng_blobs
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_OUT)
LOCAL_MODULE_TAGS := optional

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): \
    $(LOCAL_PATH)/chenfeng_limit_S3905S.csv \
    $(LOCAL_PATH)/synaptics_spi_chenfeng.img
	@echo "Copying Chenfeng firmware blobs to recovery output..."
	mkdir -p $(TARGET_RECOVERY_OUT)/vendor/firmware
	$(COPY) $(LOCAL_PATH)/chenfeng_limit_S3905S.csv $(TARGET_RECOVERY_OUT)/vendor/firmware/chenfeng_limit_S3905S.csv
	$(COPY) $(LOCAL_PATH)/synaptics_spi_chenfeng.img $(TARGET_RECOVERY_OUT)/vendor/firmware/synaptics_spi_chenfeng.img

