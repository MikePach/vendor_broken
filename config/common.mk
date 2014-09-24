PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    persist.sys.root_access=3

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/broken/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/broken/prebuilt/common/bin/50-broken.sh:system/addon.d/50-broken.sh \
    vendor/broken/prebuilt/common/bin/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/broken/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# broken-specific init file
PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/common/etc/init.local.rc:root/init.broken.rc
    
# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/broken/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Copy libgif for Nova Launcher 3.0
PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/common/lib/libgif.so:system/lib/libgif.so

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# SU Support
PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/bin/su:system/xbin/daemonsu \
    vendor/broken/prebuilt/bin/su:system/xbin/su \
    vendor/broken/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon \
    vendor/broken/prebuilt/etc/install-recovery.sh:/system/etc/install-recovery.sh \
    vendor/broken/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/broken/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

#Init.d Support
PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/broken/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/broken/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/broken/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/broken/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/broken/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/broken/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/broken/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/broken/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/broken/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/broken/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/broken/prebuilt/common/etc/init.d/11battery:system/etc/init.d/11battery \
    vendor/broken/prebuilt/common/etc/init.d/12touch:system/etc/init.d/12touch \
    vendor/broken/prebuilt/common/etc/init.d/13minfree:system/etc/init.d/13minfree \
    vendor/broken/prebuilt/common/etc/init.d/14gpurender:system/etc/init.d/14gpurender \
    vendor/broken/prebuilt/common/etc/init.d/15sleepers:system/etc/init.d/15sleepers \
    vendor/broken/prebuilt/common/etc/init.d/16journalism:system/etc/init.d/16journalism \
    vendor/broken/prebuilt/common/etc/init.d/17sqlite3:system/etc/init.d/17sqlite3 \
    vendor/broken/prebuilt/common/etc/init.d/18wifisleep:system/etc/init.d/18wifisleep \
    vendor/broken/prebuilt/common/etc/init.d/19iostats:system/etc/init.d/19iostats \
    vendor/broken/prebuilt/common/etc/init.d/20setrenice:system/etc/init.d/20setrenice \
    vendor/broken/prebuilt/common/etc/init.d/21tweaks:system/etc/init.d/21tweaks \
    vendor/broken/prebuilt/common/etc/init.d/24speedy_modified:system/etc/init.d/24speedy_modified \
    vendor/broken/prebuilt/common/etc/init.d/25loopy_smoothness_tweak:system/etc/init.d/25loopy_smoothness_tweak \
    vendor/broken/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/broken/prebuilt/common/etc/helpers.sh:system/etc/helpers.sh \
    vendor/broken/prebuilt/common/etc/init.d.cfg:system/etc/init.d.cfg \
    vendor/broken/prebuilt/common/bin/sysinit:system/bin/sysinit
    
# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/common/xbin/zip:system/xbin/zip \
    vendor/broken/prebuilt/common/xbin/zipalign:system/xbin/zipalign

# Workaround for NovaLauncher zipalign fails
PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/common/app/NovaLauncher.apk:system/app/NovaLauncher.apk
    
# OmniSwitch
PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/common/app/OmniSwitch.apk:system/priv-app/OmniSwitch.apk
    
# Viper4Android
PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/common/app/ViPER4Android.apk:system/app/ViPER4Android.apk

# Required packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Development \
    SpareParts \
    SuperSu

# Optional packages
PRODUCT_PACKAGES += \
    Basic \
    HoloSpiralWallpaper \
    NoiseField \
    Galaxy4 \
    LiveWallpapersPicker \
    PhaseBeam

# Extra Optional packages
PRODUCT_PACKAGES += \
    SlimFileManager \
    LatinIME \
    BluetoothExt \
    DashClock \
    PerformanceControl
    
# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

# easy way to extend to add more packages
-include vendor/extra/product.mk


PRODUCT_PACKAGE_OVERLAYS += vendor/broken/overlay/common

# Theme Manager
include vendor/broken/config/themes.mk

# Boot animation include
ifneq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))

# determine the smaller dimension
TARGET_BOOTANIMATION_SIZE := $(shell \
  if [ $(TARGET_SCREEN_WIDTH) -lt $(TARGET_SCREEN_HEIGHT) ]; then \
    echo $(TARGET_SCREEN_WIDTH); \
  else \
    echo $(TARGET_SCREEN_HEIGHT); \
  fi )

# get a sorted list of the sizes
bootanimation_sizes := $(subst .zip,, $(shell ls vendor/broken/prebuilt/common/bootanimation))
bootanimation_sizes := $(shell echo -e $(subst $(space),'\n',$(bootanimation_sizes)) | sort -rn)

# find the appropriate size and set
define check_and_set_bootanimation
$(eval TARGET_BOOTANIMATION_NAME := $(shell \
  if [ -z "$(TARGET_BOOTANIMATION_NAME)" ]; then \
    if [ $(1) -le $(TARGET_BOOTANIMATION_SIZE) ]; then \
      echo $(1); \
      exit 0; \
    fi;
  fi;
  echo $(TARGET_BOOTANIMATION_NAME); ))
endef
$(foreach size,$(bootanimation_sizes), $(call check_and_set_bootanimation,$(size)))

PRODUCT_COPY_FILES += \
    vendor/broken/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
endif

# version
RELEASE = true
BROKEN_VERSION_MAJOR = 1
BROKEN_VERSION_MINOR = 1

# Set BROKEN_BUILDTYPE
ifdef BROKEN_NIGHTLY
    BROKEN_BUILDTYPE := NIGHTLY
endif
ifdef BROKEN_EXPERIMENTAL
    BROKEN_BUILDTYPE := EXPERIMENTAL
endif
ifdef BROKEN_RELEASE
    BROKEN_BUILDTYPE := RELEASE
endif
# Set Unofficial if no buildtype set (Buildtype should ONLY be set by Broken team members!)
ifdef BROKEN_BUILDTYPE
else
    BROKEN_BUILDTYPE := TESTING
    BROKEN_VERSION_MAJOR :=
    BROKEN_VERSION_MINOR :=
endif

# Set broken version
ifdef BROKEN_RELEASE
    BROKEN_VERSION := "BROKEN-1.1-v"$(BROKEN_VERSION_MAJOR).$(BROKEN_VERSION_MINOR)
else
    BROKEN_VERSION := "BROKEN-1.1-$(BROKEN_BUILDTYPE)"-$(shell date +%Y%m%d-%H%M)
endif

PRODUCT_PROPERTY_OVERRIDES += \
  ro.broken.version=$(BROKEN_VERSION)
  
# by default, do not update the recovery with system updates
PRODUCT_PROPERTY_OVERRIDES += persist.sys.recovery_update=false

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    broken.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.broken.version=$(broken_VERSION) \
    ro.modversion=$(broken_MOD_VERSION) \
    ro.broken.buildtype=$(broken_BUILD_TYPE)

