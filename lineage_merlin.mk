# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from merlin device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := merlin
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_merlin
PRODUCT_MODEL := M2003J15SC

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := merlin
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="merlin-user 10 QP1A.190711.020 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/merlin_global/merlin:10/QP1A.190711.020/V12.0.8.0.QJOMIXM:user/release-keys
