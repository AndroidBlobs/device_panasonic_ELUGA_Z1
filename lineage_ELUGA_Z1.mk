# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ELUGA_Z1 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := panasonic
PRODUCT_DEVICE := ELUGA_Z1
PRODUCT_MANUFACTURER := panasonic
PRODUCT_NAME := lineage_ELUGA_Z1
PRODUCT_MODEL := ELUGA Z1

PRODUCT_GMS_CLIENTID_BASE := android-panasonic
TARGET_VENDOR := panasonic
TARGET_VENDOR_PRODUCT_NAME := ELUGA_Z1
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_k62v1_64_bsp-user 8.1.0 O11019 1536172036 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Panasonic/ELUGA_Z1/ELUGA_Z1:8.1.0/O11019/1536172036:user/release-keys
