#
# Copyright (C) 2013 The CyanogenMod Project
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

$(call inherit-product, device/common/gps/gps_eu.mk)
DEVICE_PACKAGE_OVERLAYS += device/htc/chacha/overlay

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 \
    ro.com.google.networklocation=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.verify_bytecode=false \
    dalvik.vm.execution-mode=int:fast \
    dalvik.vm.checkjni=0 \
    dalvik.vm.dexopt-data-only=1

PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_COPY_FILES += \
    device/htc/chacha/init.chacha.usb.rc:root/init.chacha.usb.rc \
    device/htc/chacha/init.chacha.rc:root/init.chacha.rc \
    device/htc/chacha/ueventd.chacha.rc:root/ueventd.chacha.rc \
    device/htc/chacha/fstab.chacha:root/fstab.chacha

### Touchscreen
PRODUCT_COPY_FILES += \
    device/htc/chacha/configs/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml 
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

### Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad.kl:system/usr/keylayout/chacha-keypad.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad.kcm:system/usr/keychars/chacha-keypad.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-ara.kl:system/usr/keylayout/chacha-keypad-ara.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-ara.kcm:system/usr/keychars/chacha-keypad-ara.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-aw.kl:system/usr/keylayout/chacha-keypad-aw.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-aw.kcm:system/usr/keychars/chacha-keypad-aw.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-bopomo.kl:system/usr/keylayout/chacha-keypad-bopomo.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-bopomo.kcm:system/usr/keychars/chacha-keypad-bopomo.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-cn.kl:system/usr/keylayout/chacha-keypad-cn.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-cn.kcm:system/usr/keychars/chacha-keypad-cn.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-ell.kl:system/usr/keylayout/chacha-keypad-ell.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-ell.kcm:system/usr/keychars/chacha-keypad-ell.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-esn.kl:system/usr/keylayout/chacha-keypad-esn.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-esn.kcm:system/usr/keychars/chacha-keypad-esn.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-fra.kl:system/usr/keylayout/chacha-keypad-fra.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-fra.kcm:system/usr/keychars/chacha-keypad-fra.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-ger.kl:system/usr/keylayout/chacha-keypad-ger.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-ger.kcm:system/usr/keychars/chacha-keypad-ger.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-hk.kl:system/usr/keylayout/chacha-keypad-hk.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-hk.kcm:system/usr/keychars/chacha-keypad-hk.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-ita.kl:system/usr/keylayout/chacha-keypad-ita.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-ita.kcm:system/usr/keychars/chacha-keypad-ita.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-nor.kl:system/usr/keylayout/chacha-keypad-nor.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-nor.kcm:system/usr/keychars/chacha-keypad-nor.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-rus.kl:system/usr/keylayout/chacha-keypad-rus.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-rus.kcm:system/usr/keychars/chacha-keypad-rus.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-steng.kl:system/usr/keylayout/chacha-keypad-steng.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-steng.kcm:system/usr/keychars/chacha-keypad-steng.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-tai.kl:system/usr/keylayout/chacha-keypad-tai.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-tai.kcm:system/usr/keychars/chacha-keypad-tai.kcm \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-tur.kl:system/usr/keylayout/chacha-keypad-tur.kl \
    device/htc/chacha/prebuilt/keylayout/chacha-keypad-tur.kcm:system/usr/keychars/chacha-keypad-tur.kcm \
    device/htc/chacha/prebuilt/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/chacha/prebuilt/keylayout/cy8c-touchscreen.kl:system/usr/keylayout/cy8c-touchscreen.kl

## Temp fix for Akmd
PRODUCT_COPY_FILES += \
    device/htc/chacha/prebuilt/linker:system/bin/linker

# For emmc phone storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.phone_storage=0

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mass_storage,adb

# Media
PRODUCT_COPY_FILES += \
    device/htc/chacha/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/chacha/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/chacha/configs/media_profiles.xml:system/etc/media_profiles.xml

# Common bcm4329 firmware
PRODUCT_COPY_FILES += \
    device/htc/chacha/firmware/bcm4329.hcd:system/etc/firmware/bcm4329.hcd \
    device/htc/chacha/firmware/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \
    device/htc/chacha/firmware/fw_bcm4329_apsta.bin:system/etc/firmware/fw_bcm4329_apsta.bin

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
        system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7x27 \
    audio.primary.msm7x27 \
    libtinyalsa \
    libaudioutils

### Sensors (Compass, G-Sensor, Proximity, ...)
PRODUCT_PACKAGES += \
    sensors.msm7x27 \
    lights.msm7x27

# Video
PRODUCT_PACKAGES += \
    copybit.msm7x27 \
    gralloc.msm7x27 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# Camera
PRODUCT_PACKAGES += \
    camera.msm7x27 \
    libcamera

# QCOM OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# GPS
PRODUCT_PACKAGES += \
    gps.msm7x27 \
    gps.chacha \
    librpc

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    brcm_patchram_plus

### Add system daemons
PRODUCT_PACKAGES += \
    rild

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.opengles.surface.rgb565=true \
    com.qc.hardware=true \
    debug.enabletr=false \
    debug.hwui.render_dirty_regions=false \
    debug.qctwa.statusbar=1 \
    debug.qctwa.preservebuf=1 \
    hwui.print_config=choice \
    persist.sys.strictmode.visual=false

# Stagefright
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=false \
    media.stagefright.enable-scan=false \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true

# Camera and Camcorder
PRODUCT_PROPERTY_OVERRIDES += \
    debug.camcorder.disablemeta=1 \
    ro.htc.camerahack=msm7k

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.a1026.nsForVoiceRec = 0 \
    media.a1026.enableA1026 = 1

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# goo.im stuff
$(call inherit-product-if-exists, vendor/goomanager/goo.mk)

$(call inherit-product-if-exists, vendor/htc/chacha/chacha-vendor.mk)
