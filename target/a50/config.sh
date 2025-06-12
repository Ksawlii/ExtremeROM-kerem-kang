# Copyright (C) 2025 Kerem
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# Device configuration file for Galaxy A50 (a50)
TARGET_NAME="Galaxy A50"
TARGET_CODENAME="a50"
TARGET_ASSERT_MODEL=("SM-A505F")
TARGET_PLATFORM="exynos9610"
TARGET_FIRMWARE="SM-A505F/TUR/356010102439949"
TARGET_EXTRA_FIRMWARES=("")
TARGET_API_LEVEL=31
TARGET_PRODUCT_FIRST_API_LEVEL=28  # Android 9 ile çıktı
TARGET_VNDK_VERSION=30
TARGET_SINGLE_SYSTEM_IMAGE="essi"
TARGET_OS_FILE_SYSTEM="erofs"

# A50'de dynamic / super partition YOK
TARGET_USES_DYNAMIC_PARTITIONS=false
# Super partition ayarları kaldırıldı

TARGET_HAS_SYSTEM_EXT=false
TARGET_INSTALL_METHOD=zip
TARGET_BOOT_DEVICE_PATH="/dev/block/platform/13520000.ufs/by-name"

# SEC Product Feature (A50’ye göre uyarlanmış)
TARGET_AUTO_BRIGHTNESS_TYPE="2"
TARGET_DVFS_CONFIG_NAME="dvfs_table"
TARGET_NFC_CHIP_VENDOR="NXP"
TARGET_FP_SENSOR_CONFIG="goodix_fod"
TARGET_SSRM_CONFIG_NAME="siop_exynos9610"
TARGET_MDNIE_SUPPORTED_MODES="1"
TARGET_HAS_MASS_CAMERA_APP=false
TARGET_HAS_QHD_DISPLAY=false
TARGET_HFR_MODE="0"
TARGET_HFR_SUPPORTED_REFRESH_RATE="60"
TARGET_HFR_DEFAULT_REFRESH_RATE="60"
TARGET_DISPLAY_CUTOUT_TYPE="none"
TARGET_IS_ESIM_SUPPORTED=false
TARGET_SUPPORT_WIFI_7=false
TARGET_SUPPORT_HOTSPOT_DUALAP=true
TARGET_SUPPORT_HOTSPOT_WPA3=true
TARGET_SUPPORT_HOTSPOT_6GHZ=false
TARGET_SUPPORT_HOTSPOT_WIFI_6=false
TARGET_SUPPORT_HOTSPOT_ENHANCED_OPEN=false
TARGET_HAS_HW_MDNIE=true
TARGET_MDNIE_WEAKNESS_SOLUTION_FUNCTION="0"
TARGET_AUDIO_SUPPORT_ACH_RINGTONE=false
TARGET_AUDIO_SUPPORT_VIRTUAL_VIBRATION=false
