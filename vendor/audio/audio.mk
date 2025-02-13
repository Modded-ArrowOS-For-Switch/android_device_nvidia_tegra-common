# Copyright (C) 2020 The LineageOS Project
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

PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.audio@6.0 \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.common@6.0 \
    android.hardware.audio.common@6.0-util \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.bluetooth.audio@2.0-impl \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.tegra \
    android.hardware.soundtrigger@2.1-impl \
    sound_trigger.primary.tegra \
    NvAudioSvc

ifeq ($(TARGET_TEGRA_DOLBY),true)
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-service-msd \
    DolbyAudioService
endif

ifeq ($(TARGET_TEGRA_APTX),true)
PRODUCT_PACKAGES += \
    libaptX_encoder \
    libaptXHD_encoder
endif
