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

LOCAL_MODULE := ruyi_blobs
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_OUT)
LOCAL_MODULE_TAGS := optional

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): \
    $(LOCAL_PATH)/goodix_cfg_group_ruyi.bin \
    $(LOCAL_PATH)/goodix_firmware_ruyi.bin \
    $(LOCAL_PATH)/goodix_test_limits_0.csv \
    $(LOCAL_PATH)/ruyi_test_limits_S3910P.csv \
    $(LOCAL_PATH)/synaptics_spi_ruyi.img
	@echo "Copying Ruyi firmware blobs to recovery output..."
	mkdir -p $(TARGET_RECOVERY_OUT)/vendor/firmware
	$(COPY) $(LOCAL_PATH)/goodix_cfg_group_ruyi.bin $(TARGET_RECOVERY_OUT)/vendor/firmware/goodix_cfg_group_ruyi.bin
	$(COPY) $(LOCAL_PATH)/goodix_firmware_ruyi.bin $(TARGET_RECOVERY_OUT)/vendor/firmware/goodix_firmware_ruyi.bin
	$(COPY) $(LOCAL_PATH)/goodix_test_limits_0.csv $(TARGET_RECOVERY_OUT)/vendor/firmware/goodix_test_limits_0.csv
	$(COPY) $(LOCAL_PATH)/ruyi_test_limits_S3910P.csv $(TARGET_RECOVERY_OUT)/vendor/firmware/ruyi_test_limits_S3910P.csv
	$(COPY) $(LOCAL_PATH)/synaptics_spi_ruyi.img $(TARGET_RECOVERY_OUT)/vendor/firmware/synaptics_spi_ruyi.img

