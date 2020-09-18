#
# Copyright (C) 2018 The Android Open-Source Project
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

COMMON_PATH := device/sharp/sdm660-common

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/sharp/sdm660-common/sdm660-common-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(COMMON_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.print.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/permissions/com.evenwell.datacollect.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.evenwell.datacollect.xml \
    $(COMMON_PATH)/permissions/com.fihtdc.datacollect.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.fihtdc.datacollect.xml \
    $(COMMON_PATH)/permissions/com.fihtdc.hardware.sensor.hall.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.fihtdc.hardware.sensor.hall.xml \
    $(COMMON_PATH)/permissions/com.fihtdc.inlifeui.settings.style.android.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.fihtdc.inlifeui.settings.style.android.xml

# A/B Partition Scheme
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    antradio_app \
    com.dsi.ant.antradio_library

PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.dsi.ant.antradio_library.xml

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-service \
    android.hardware.audio@5.0-impl:32 \
    android.hardware.audio.effect@5.0-impl:32 \
    android.hardware.bluetooth.audio@2.0-impl:32 \
    android.hardware.soundtrigger@2.2-impl:32 \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.primary.sdm660 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libaudioroute \
    libdynproc \
    libhdmiedid \
    libhfp \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libsndmonitor \
    libspkrprot \
    libssrec \
    libvolumelistener \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0 \
    audio.bluetooth.default \
    android.hardware.bluetooth.audio@2.0-impl \
    vendor.qti.hardware.btconfigstore@1.0.vendor

# Boot Control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.sdm660 \
    bootctrl.sdm660.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctl

PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    camera.device@3.2-impl \
    libstdc++.vendor \
    libxml2 \
    Snap

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl:64 \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl:64 \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    copybit.sdm660 \
    gralloc.sdm660 \
    hwcomposer.sdm660 \
    memtrack.sdm660 \
    libdisplayconfig \
    liboverlay \
    libqdMetaData.system \
    libtinyxml

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.2-service.clearkey

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio

PRODUCT_BOOT_JARS += \
    qcom.fmradio

# Framework Detect
PRODUCT_PACKAGES += \
    libqti_vndfwk_detect \
    libqti_vndfwk_detect.vendor

# GPS
PRODUCT_PACKAGES += \
    libwifi-hal-ctrl

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/gps/apdr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/apdr.conf \
    $(COMMON_PATH)/gps/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(COMMON_PATH)/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(COMMON_PATH)/gps/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(COMMON_PATH)/gps/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0_system \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

# IPACM
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml \
    libipanat \
    liboffloadhal

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# IRSC
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# IRQ
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf \
    $(COMMON_PATH)/configs/msm_irqbalance_sdm630.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance_sdm630.conf

# Keylayout
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/keylayout/elan.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/elan.kl \
    $(COMMON_PATH)/keylayout/goodix_fp.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/goodix_fp.kl \
    $(COMMON_PATH)/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.sharp_sdm660

# Media
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(COMMON_PATH)/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(COMMON_PATH)/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

# Net
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0 \
    libandroid_net \
    netutils-wrapper-1.0

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    com.android.nfc_extras \
    NfcNci \
    SecureElement \
    Tag

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.2-service-qti

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-vendorcompat \
    libprotobuf-cpp-lite-vendorcompat

# QMI
PRODUCT_PACKAGES += \
    libjson

# QTI
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/telephony_product_privapp-permissions-qti.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/telephony_product_privapp-permissions-qti.xml \
    $(COMMON_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \
    $(COMMON_PATH)/configs/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    $(COMMON_PATH)/configs/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml \

# RCS
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager \
    PresencePolling \
    RcsService

# Radio
PRODUCT_PACKAGES += \
    android.hardware.radio@1.4 \
    android.hardware.radio@1.2 \
    android.hardware.radio.config@1.0 \
    android.hardware.secure_element@1.0 \
    rild \
    librmnetctl \
    libprotobuf-cpp-full \
    libxml2

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.msm.usb.configfs.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qti.qseecomd.sh \
    wlan_carrier_bin.sh

# RenderScript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Seccomp
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service \
    libsensorndkbridge

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf \
    $(COMMON_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(COMMON_PATH)

# Telephony-ext
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Trust
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# Weaver
PRODUCT_PACKAGES += \
    android.hardware.weaver@1.0

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(COMMON_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(COMMON_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini

# Wi-Fi Display
PRODUCT_PACKAGES += \
    libmediaextractorservice

PRODUCT_BOOT_JARS += \
    WfdCommon
