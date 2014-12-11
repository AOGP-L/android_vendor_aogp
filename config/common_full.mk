# Inherit common AOGP stuff
$(call inherit-product, vendor/aogp/config/common.mk)

# Include AOGP audio files
include vendor/aogp/config/aogp_audio.mk

# Include AOGP LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aogp/overlay/dictionaries

# Optional AOGP packages
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable \
    SoundRecorder \
    PhotoPhase

PRODUCT_PACKAGES += \
    VideoEditor \
    libvideoeditor_jni \
    libvideoeditor_core \
    libvideoeditor_osal \
    libvideoeditor_videofilters \
    libvideoeditorplayer

# Extra tools in AOGP
PRODUCT_PACKAGES += \
    vim \
    zip \
    unrar
