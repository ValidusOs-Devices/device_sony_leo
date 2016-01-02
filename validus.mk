# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit AOSP Shinano device parts
$(call inherit-product, device/sony/leo/aosp_d6603.mk)

# Inherit validus Shinano device parts
$(call inherit-product, device/sony/shinano/device2.mk)

# Inherit validus common Phone stuff.
$(call inherit-product, vendor/validus/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/validus/config/nfc_enhanced.mk)

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/leo/bootrec-device:root/sbin/bootrec-device

# Fingerprint for leo
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D6603
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D6603/D6603:5.1.1/23.4.A.1.264/2418263178:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D6603-user 5.1.1 23.4.A.1.264 2418263178 release-keys"

# Override Product Name for tipsy
PRODUCT_NAME := validus_leo
PRODUCT_MODEL := Xperia Z3
