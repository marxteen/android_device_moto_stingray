#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=stingray
MANUFACTURER=moto

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/brcm_guci_drv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/brcm_guci_drv
adb pull /system/bin/bypassfactory ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bypassfactory
adb pull /system/bin/ftmipcd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ftmipcd
adb pull /system/bin/location ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/location
adb pull /system/bin/savebpver ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/savebpver
adb pull /system/bin/tcmd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/tcmd
adb pull /system/etc/gps.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps.conf
adb pull /system/etc/gpsconfig.xml ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gpsconfig.xml
adb pull /system/etc/location.cfg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/location.cfg
adb pull /system/etc/security/suplcerts.bks ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/suplcerts.bks
adb pull /system/lib/hw/gps.stingray.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps.stingray.so
adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera.so
adb pull /system/lib/libnvodm_imager.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libnvodm_imager.so
adb pull /system/lib/libnvodm_query.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libnvodm_query.so
adb pull /system/lib/libnvomxilclient.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libnvomxilclient.so
adb pull /system/lib/libnvos.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libnvos.so
adb pull /system/lib/libnvrm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libnvrm.so
adb pull /system/lib/libnvrm_graphics.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libnvrm_graphics.so
adb pull /system/lib/libstagefrighthw.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libstagefrighthw.so

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so

# All the blobs necessary for stingray
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/brcm_guci_drv:system/bin/brcm_guci_drv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bypassfactory:system/bin/bypassfactory \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ftmipcd:system/bin/ftmipcd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/location:system/bin/location \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/savebpver:system/bin/savebpver \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/tcmd:system/bin/tcmd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps.conf:system/etc/gps.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gpsconfig.xml:system/etc/gpsconfig.xml \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/location.cfg:system/etc/location.cfg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/suplcerts.bks:system/etc/security/suplcerts.bks \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps.stingray.so:system/lib/hw/gps.stingray.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnvodm_imager.so:system/lib/libnvodm_imager.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnvodm_query.so:system/lib/libnvodm_query.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnvomxilclient.so:system/lib/libnvomxilclient.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnvos.so:system/lib/libnvos.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnvrm.so:system/lib/libnvrm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnvrm_graphics.so:system/lib/libnvrm_graphics.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libstagefrighthw.so:system/lib/libstagefrighthw.so
EOF

./setup-makefiles.sh