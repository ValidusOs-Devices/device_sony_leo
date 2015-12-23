# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit AOSP Shinano device parts
$(call inherit-product, device/sony/leo/aosp_d6603.mk)

# Inherit crDroid Shinano device parts
$(call inherit-product, device/sony/shinano/device2.mk)

## crDroid Parts ##
# Inherit crDroid common Phone stuff.
$(call inherit-product, vendor/crdroid/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/crdroid/config/nfc_enhanced.mk)
## End crDroid Parts ##

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/leo/bootrec-device:root/sbin/bootrec-device

# Fingerprint for leo
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D6603
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D6603/D6603:5.1.1/23.4.A.1.264/2418263178:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D6603-user 5.1.1 23.4.A.1.264 2418263178 release-keys"

# Override Product Name for crDroid
PRODUCT_NAME := crdroid_leo
PRODUCT_MODEL := Xperia Z3
