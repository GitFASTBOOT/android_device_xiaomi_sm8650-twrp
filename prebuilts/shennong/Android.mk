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

LOCAL_MODULE := shennong_blobs
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_OUT)
LOCAL_MODULE_TAGS := optional

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): \
    $(LOCAL_PATH)/film_model.tflite \
    $(LOCAL_PATH)/shennong_syna_thp_config_00.ini \
    $(LOCAL_PATH)/shennong_syna_thp_config_01.ini \
    $(LOCAL_PATH)/shennong_test_limits_S3910P_00.csv \
    $(LOCAL_PATH)/shennong_test_limits_S3910P_01.csv \
    $(LOCAL_PATH)/synaptics_spi_shennong_00.img \
    $(LOCAL_PATH)/synaptics_spi_shennong_01.img \
    $(LOCAL_PATH)/water_check.tflite
	@echo "Copying Shennong firmware blobs to recovery output..."
	mkdir -p $(TARGET_RECOVERY_OUT)/vendor/firmware
	$(COPY) $(LOCAL_PATH)/film_model.tflite $(TARGET_RECOVERY_OUT)/vendor/firmware/film_model.tflite
	$(COPY) $(LOCAL_PATH)/shennong_syna_thp_config_00.ini $(TARGET_RECOVERY_OUT)/vendor/firmware/shennong_syna_thp_config_00.ini
	$(COPY) $(LOCAL_PATH)/shennong_syna_thp_config_01.ini $(TARGET_RECOVERY_OUT)/vendor/firmware/shennong_syna_thp_config_01.ini
	$(COPY) $(LOCAL_PATH)/shennong_test_limits_S3910P_00.csv $(TARGET_RECOVERY_OUT)/vendor/firmware/shennong_test_limits_S3910P_00.csv
	$(COPY) $(LOCAL_PATH)/shennong_test_limits_S3910P_01.csv $(TARGET_RECOVERY_OUT)/vendor/firmware/shennong_test_limits_S3910P_01.csv
	$(COPY) $(LOCAL_PATH)/synaptics_spi_shennong_00.img $(TARGET_RECOVERY_OUT)/vendor/firmware/synaptics_spi_shennong_00.img
	$(COPY) $(LOCAL_PATH)/synaptics_spi_shennong_01.img $(TARGET_RECOVERY_OUT)/vendor/firmware/synaptics_spi_shennong_01.img
	$(COPY) $(LOCAL_PATH)/water_check.tflite $(TARGET_RECOVERY_OUT)/vendor/firmware/water_check.tflite

