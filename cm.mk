## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ChaCha

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-320x480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/chacha/full_chacha.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_chacha
PRODUCT_DEVICE := cahacha
PRODUCT_BRAND := HTC
PRODUCT_MODEL := ChaCha
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=chacha BUILD_FINGERPRINT=htc/htc_chacha/chacha:4.3/JWR66V/737497:user/release-keys PRIVATE_BUILD_DESC="chacha-user 4.3 JWR66V  737497 release-keys"
