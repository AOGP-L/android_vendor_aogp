# Inherit common AOGP stuff
$(call inherit-product, vendor/aogp/config/common_full.mk)

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

$(call inherit-product, vendor/aogp/config/telephony.mk)
