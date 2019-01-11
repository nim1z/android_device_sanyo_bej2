#
# Copyright (C) 2011 The Android Open-Source Project
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

# .rc
PRODUCT_COPY_FILES := \
	device/sanyo/BEJ2/init.freescale.rc:root/init.freescale.rc \
	device/sanyo/BEJ2/ueventd.freescale.rc:root/ueventd.freescale.rc \
	device/sanyo/BEJ2/init.tsmode.rc:root/init.tsmode.rc \
        device/sanyo/BEJ2/fstab.freescale:root/fstab.freescale

#cmd
PRODUCT_COPY_FILES += \
        device/sanyo/BEJ2/cmd/mlan_tool:system/bin/mlan_tool \
        device/sanyo/BEJ2/cmd/set_macaddr:system/bin/set_macaddr \
	device/sanyo/BEJ2/cmd/ts_calibrator:root/sbin/ts_calibrator

# wifi
PRODUCT_COPY_FILES += \
        device/sanyo/BEJ2/wifi/mlan.ko:system/wifi/mlan.ko \
        device/sanyo/BEJ2/wifi/sd8787.ko:system/wifi/sd8787.ko\
        device/sanyo/BEJ2/wifi/sd8787_uapsta.bin:system/wifi/sd8787_uapsta.bin \
	device/sanyo/BEJ2/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
	device/sanyo/BEJ2/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

#keylayout
PRODUCT_COPY_FILES += \
	device/sanyo/BEJ2/keylayout/Benesse.kl:system/usr/keylayout/Rohm-CTP-BU21023GUL-Key.kl \
	device/sanyo/BEJ2/keylayout/Rohm-CTP-BU21023GUL.idc:system/usr/idc/Rohm-CTP-BU21023GUL.idc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
        frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml

PRODUCT_PACKAGES := \
	com.android.future.usb.accessory \
	libGLES_android \
	egl.cfg \
	wpa_supplicant \
	hostapd \
	NotoColorEmoji.ttf \
	ext4_utils \
	e2fsprogs \
	e2fsck \
	wirless_tools \
	iwconfig \
	iwlist \
	iwspy \
	iwgetid \
	iwevent 


PRODUCT_PROPERTY_OVERRIDES := \
	hwui.render_dirty_regions=false \
        ro.sf.lcd_density=160 \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15 

PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_CHARACTERISTICS := tablet

