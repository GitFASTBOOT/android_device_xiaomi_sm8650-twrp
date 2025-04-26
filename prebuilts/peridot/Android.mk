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

LOCAL_MODULE := peridot_blobs
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_OUT)
LOCAL_MODULE_TAGS := optional

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): \
    $(LOCAL_PATH)/focaltech_ts_fw_TianMa2.bin \
    $(LOCAL_PATH)/focaltech_ts_fw_TianMa.bin \
    $(LOCAL_PATH)/goodix_cfg_group_peridot_csot.bin \
    $(LOCAL_PATH)/goodix_cfg_group_peridot_csot_second.bin \
    $(LOCAL_PATH)/goodix_firmware_peridot_csot.bin \
    $(LOCAL_PATH)/goodix_firmware_peridot_csot_second.bin \
    $(LOCAL_PATH)/goodix_test_limits_255.csv \
    $(LOCAL_PATH)/goodix_test_limits_second_255.csv
	@echo "Copying firmware blobs to recovery output..."
	mkdir -p $(TARGET_RECOVERY_OUT)/vendor/firmware
	$(COPY) $(LOCAL_PATH)/focaltech_ts_fw_TianMa2.bin $(TARGET_RECOVERY_OUT)/vendor/firmware/focaltech_ts_fw_TianMa2.bin
	$(COPY) $(LOCAL_PATH)/focaltech_ts_fw_TianMa.bin $(TARGET_RECOVERY_OUT)/vendor/firmware/focaltech_ts_fw_TianMa.bin
	$(COPY) $(LOCAL_PATH)/goodix_cfg_group_peridot_csot.bin $(TARGET_RECOVERY_OUT)/vendor/firmware/goodix_cfg_group_peridot_csot.bin
	$(COPY) $(LOCAL_PATH)/goodix_cfg_group_peridot_csot_second.bin $(TARGET_RECOVERY_OUT)/vendor/firmware/goodix_cfg_group_peridot_csot_second.bin
	$(COPY) $(LOCAL_PATH)/goodix_firmware_peridot_csot.bin $(TARGET_RECOVERY_OUT)/vendor/firmware/goodix_firmware_peridot_csot.bin
	$(COPY) $(LOCAL_PATH)/goodix_firmware_peridot_csot_second.bin $(TARGET_RECOVERY_OUT)/vendor/firmware/goodix_firmware_peridot_csot_second.bin
	$(COPY) $(LOCAL_PATH)/goodix_test_limits_255.csv $(TARGET_RECOVERY_OUT)/vendor/firmware/goodix_test_limits_255.csv
	$(COPY) $(LOCAL_PATH)/goodix_test_limits_second_255.csv $(TARGET_RECOVERY_OUT)/vendor/firmware/goodix_test_limits_second_255.csv

